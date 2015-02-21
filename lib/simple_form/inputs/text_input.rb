module SimpleForm
  module Inputs
    class TextInput < Base
      enable :placeholder, :maxlength

      def input(wrapper_options = nil)
        merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

        if has_keys?
          @builder.fields_for attribute_name do |list|
            Array(options[:keys]).map do |element|
              list.input element
            end
          end
        else
          @builder.text_area(attribute_name, merged_input_options)
        end
      end
    end
  end
end
