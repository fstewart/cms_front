module SimpleForm
  module Components
    module Icons
      def icon(wrapper_options = nil)
        return icon_class unless options[:icon].nil?
      end

      def icon_class
        icon_tag = template.content_tag(:i, '', class: options[:icon])
      end
    end
  end
end

SimpleForm::Inputs::Base.send(:include, SimpleForm::Components::Icons)

module SimpleForm
  module Components
    module Typeahead
      def typeahead(wrapper_options = nil)
        unless typeahead_source.empty?
          input_html_options['data-provide'] ||= 'typeahead'
          input_html_options['data-items'] ||= 5
          input_html_options['data-source'] ||= typeahead_source.inspect.to_s
          nil
        end
      end

      def typeahead_source
        tdata = options[:typeahead]
        return Array(tdata)
      end
    end
  end
end