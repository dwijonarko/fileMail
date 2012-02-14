# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FileMail::Application.initialize!
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if instance.error_message.kind_of?(Array)
    %(<div class="validation-error">#{html_tag}&nbsp;
      #{instance.error_message.join(',')}</div>).html_safe
  else
    %(<div class="validation-error">&nbsp;
      #{instance.error_message}</div>).html_safe
  end
end