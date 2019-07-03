# name: DiscourseMicrom
# about:
# version: 0.1
# authors: jameshahn2
# url: https://github.com/jameshahn2


enabled_site_setting :composer_audio_upload_enabled

register_asset 'stylesheets/discourse-microm.scss'

register_html_builder('server:before-head-close') do
  #'<script src="/plugins/discourse-microm/javascripts/vendor/RecordRTC.min.js"></script>'
  '<script src="/plugins/discourse-microm/javascripts/vendor/microm.min.js"></script>'
end
