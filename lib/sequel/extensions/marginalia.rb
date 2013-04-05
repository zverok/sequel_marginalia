module Sequel
    module Marginalia
        def self.included(dataset_class)
            dataset_class.class_eval do
                if defined? :execute
                    alias_method :execute_without_sequel_marginalia, :execute
                    alias_method :execute, :execute_with_sequel_marginalia
                end
            end
        end

        def execute_with_sequel_marginalia(sql, opts={}, &block)
            execute_without_sequel_marginalia(annotate_sql(sql), opts, &block)
        end

        def annotate_sql(sql)
            comment = caller.
                reject{|ln| ln =~ /lib\/sequel/}.
                first

            if comment && !sql.include?(comment)
                "#{sql}\n/* #{comment} */"
            else
                sql
            end
        end
    end

    Database.register_extension(:marginalia){|db|
        db.dataset_class.module_eval do
            include Marginalia
        end
    }
end
