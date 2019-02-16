module ApplicationHelper
    def button_text
        if controller.action_name == "new"
            return "Create Article"
        end
    end
end
