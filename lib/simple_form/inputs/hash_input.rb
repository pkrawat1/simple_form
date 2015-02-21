module SimpleForm
  module Inputs
    class HashInput < Base
      
      def input(wrapper_options= nil)
        input_html_options[:type] ||= default_type
        merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)
        @builder.fields_for attribute_name do |list|
          #Array(options[:keys]).map do |element|
            list.input options[:keys].first, as: :boolean
          #end
        end
      end

      def default_type
        :checkbox
      end

    end
  end
end