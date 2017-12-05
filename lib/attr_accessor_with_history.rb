class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def {attr_name}_history
        @{attr_name}_history || [nil] # give default value if not assigned
        @{attr_name}=value
      end

      def {attr_name}=(new_value)
        @{attr_name}_history ||= [nil] # shortcut, compare to your line
        @{attr_name}_history << @#{attr_name} = new_value
      end
    }
  end
end