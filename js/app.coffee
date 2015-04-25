---
---

$ ->
  $("#slack-invite-form").submit (e) ->
    name = $("#slack_invite_name").val()
    email = $("#slack_invite_email").val()

    $.post "https://elixir-chennai.slack.com/services/hooks/slackbot?token=XEmuuFUndDdQEkM3z1FDoNM8&channel=%23invite-requests",
      "#{name} (#{email}) would like to join our Slack. Can you please send an invite?",
      =>
        $(@).hide().html("Invitation Requested. We will get back to you shortly.").fadeIn('slow')

    e.preventDefault()
