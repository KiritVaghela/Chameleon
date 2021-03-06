//
//  RTMAPI+Events.swift
//  Slack
//
//  Created by Ian Keen on 20/05/2016.
//  Copyright © 2016 Mustard. All rights reserved.
//

import Models
import Jay

public enum RTMAPIEvent {
    case error(code: Int, message: String)
    case pong(response: JSON) //TODO: does this need a struct model?
    case hello
    case message(message: Message, previous: Message?)
    case user_typing(user: User, target: Target)
    case channel_marked
    case channel_created
    case channel_joined
    case channel_left
    case channel_deleted
    case channel_rename
    case channel_archive
    case channel_unarchive
    case channel_history_changed
    case dnd_updated
    case dnd_updated_user
    case im_created
    case im_open
    case im_close
    case im_marked
    case im_history_changed
    case group_joined
    case group_left
    case group_open
    case group_close
    case group_archive
    case group_unarchive
    case group_rename
    case group_marked
    case group_history_changed
    case file_created
    case file_shared
    case file_unshared
    case file_public
    case file_private
    case file_change
    case file_deleted
    case file_comment_added
    case file_comment_edited
    case file_comment_deleted
    case pin_added
    case pin_removed
    case presence_change(user: User)
    case manual_presence_change
    case pref_change
    case user_change(user: User)
    case team_join
    case star_added
    case star_removed
    case reaction_added(reaction: String, user: User, itemCreator: User?, target: Target?)
    case reaction_removed(reaction: String, user: User, itemCreator: User?, target: Target?)
    case emoji_changed
    case commands_changed
    case team_plan_change
    case team_pref_change
    case team_rename
    case team_domain_change
    case email_domain_changed
    case team_profile_change
    case team_profile_delete
    case team_profile_reorder
    case bot_added
    case bot_changed
    case accounts_changed
    case team_migration_started
    case reconnect_url(url: String)
    case subteam_created
    case subteam_updated
    case subteam_self_added
    case subteam_self_removed
}
