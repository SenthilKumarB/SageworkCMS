module SettingsHelper
	def dynamic_setting_finder(attributes)
   setting = Setting.find_by_name(attributes)
   setting.blank? ? "" : setting.value
	end
end
