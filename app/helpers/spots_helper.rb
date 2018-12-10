# frozen_string_literal: true

module SpotsHelper
    def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_spots_path
    elsif action_name == 'edit'
      edit_confirm_spots_path
    end
  end
end
