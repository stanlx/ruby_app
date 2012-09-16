# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120913200531) do

  create_table "announcements_announcement", :id => false, :force => true do |t|
    t.integer  "id",                                             :null => false
    t.integer  "creator_id"
    t.string   "title",         :limit => 60,                    :null => false
    t.text     "text",                                           :null => false
    t.datetime "submit_date",                                    :null => false
    t.datetime "date_modified",                                  :null => false
    t.datetime "close_date",                                     :null => false
    t.boolean  "is_deleted",                  :default => false, :null => false
    t.boolean  "is_published",                :default => true,  :null => false
    t.tsvector "search_tsv"
  end

  create_table "announcements_announcement_assigned_user_types", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "announcement_id",     :null => false
    t.integer "assignedusertype_id", :null => false
  end

  create_table "announcements_announcement_groups", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "announcement_id", :null => false
    t.integer "group_id",        :null => false
  end

  create_table "announcements_announcement_members", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "announcement_id", :null => false
    t.integer "member_id",       :null => false
  end

  create_table "announcements_announcement_partners", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "announcement_id", :null => false
    t.integer "partner_id",      :null => false
  end

  create_table "announcements_announcement_user_types", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "announcement_id", :null => false
    t.integer "usertype_id",     :null => false
  end

  create_table "attachments_attachment", :id => false, :force => true do |t|
    t.integer  "id",                                                :null => false
    t.integer  "content_type_id",                                   :null => false
    t.integer  "object_id",                                         :null => false
    t.integer  "user_id",                                           :null => false
    t.string   "name",            :limit => 100,                    :null => false
    t.string   "attachment",      :limit => 100,                    :null => false
    t.datetime "submit_date",                                       :null => false
    t.boolean  "is_published",                   :default => true,  :null => false
    t.boolean  "is_deleted",                     :default => false, :null => false
  end

  create_table "auth_group", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.string  "name", :limit => 80, :null => false
  end

  create_table "auth_group_permissions", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "group_id",      :null => false
    t.integer "permission_id", :null => false
  end

  create_table "auth_message", :id => false, :force => true do |t|
    t.integer "id",      :null => false
    t.integer "user_id", :null => false
    t.text    "message", :null => false
  end

  create_table "auth_permission", :id => false, :force => true do |t|
    t.integer "id",                             :null => false
    t.string  "name",            :limit => 50,  :null => false
    t.integer "content_type_id",                :null => false
    t.string  "codename",        :limit => 100, :null => false
  end

  create_table "auth_user", :id => false, :force => true do |t|
    t.integer  "id",                          :null => false
    t.string   "username",     :limit => 30,  :null => false
    t.string   "first_name",   :limit => 30,  :null => false
    t.string   "last_name",    :limit => 30,  :null => false
    t.string   "email",        :limit => 75,  :null => false
    t.string   "password",     :limit => 128, :null => false
    t.boolean  "is_staff",                    :null => false
    t.boolean  "is_active",                   :null => false
    t.boolean  "is_superuser",                :null => false
    t.datetime "last_login",                  :null => false
    t.datetime "date_joined",                 :null => false
  end

  create_table "auth_user_groups", :id => false, :force => true do |t|
    t.integer "id",       :null => false
    t.integer "user_id",  :null => false
    t.integer "group_id", :null => false
  end

  create_table "auth_user_user_permissions", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "user_id",       :null => false
    t.integer "permission_id", :null => false
  end

  create_table "blogs_blog", :id => false, :force => true do |t|
    t.integer  "id",                                                :null => false
    t.integer  "creator_id"
    t.integer  "creator_user_id"
    t.string   "title",           :limit => 256,                    :null => false
    t.text     "description",                                       :null => false
    t.datetime "submit_date",                                       :null => false
    t.datetime "date_modified",                                     :null => false
    t.boolean  "is_published",                   :default => false, :null => false
    t.boolean  "is_member_blog",                 :default => false, :null => false
    t.boolean  "is_deleted",                     :default => false, :null => false
    t.integer  "member_id"
    t.integer  "photo_id"
    t.tsvector "search_tsv"
  end

  create_table "blogs_blog_partners", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "blog_id",    :null => false
    t.integer "partner_id", :null => false
  end

  create_table "blogs_blog_tags", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "blog_id",    :null => false
    t.integer "blogtag_id", :null => false
  end

  create_table "blogs_blogalert", :id => false, :force => true do |t|
    t.integer "id",                       :null => false
    t.string  "name",       :limit => 50, :null => false
    t.integer "persona_id",               :null => false
    t.string  "frequency",  :limit => 2,  :null => false
  end

  create_table "blogs_blogalert_assignedusertypes", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "blogalert_id",        :null => false
    t.integer "assignedusertype_id", :null => false
  end

  create_table "blogs_blogalert_groups", :id => false, :force => true do |t|
    t.integer "id",           :null => false
    t.integer "blogalert_id", :null => false
    t.integer "group_id",     :null => false
  end

  create_table "blogs_blogalert_keywords", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "blogalert_id",        :null => false
    t.integer "blogalertkeyword_id", :null => false
  end

  create_table "blogs_blogalert_members", :id => false, :force => true do |t|
    t.integer "id",           :null => false
    t.integer "blogalert_id", :null => false
    t.integer "member_id",    :null => false
  end

  create_table "blogs_blogalert_partners", :id => false, :force => true do |t|
    t.integer "id",           :null => false
    t.integer "blogalert_id", :null => false
    t.integer "partner_id",   :null => false
  end

  create_table "blogs_blogalert_usertypes", :id => false, :force => true do |t|
    t.integer "id",           :null => false
    t.integer "blogalert_id", :null => false
    t.integer "usertype_id",  :null => false
  end

  create_table "blogs_blogalertkeyword", :id => false, :force => true do |t|
    t.integer "id",                     :null => false
    t.string  "keyword", :limit => 100, :null => false
  end

  create_table "blogs_blogalertmatch", :id => false, :force => true do |t|
    t.integer  "id",           :null => false
    t.integer  "alert_id",     :null => false
    t.integer  "post_id",      :null => false
    t.datetime "date_added",   :null => false
    t.datetime "date_to_send", :null => false
  end

  create_table "blogs_blogalertmatch_keywords", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "blogalertmatch_id",   :null => false
    t.integer "blogalertkeyword_id", :null => false
  end

  create_table "blogs_blogphoto", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "photo", :limit => 100, :null => false
  end

  create_table "blogs_blogpostphoto", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "photo", :limit => 100, :null => false
  end

  create_table "blogs_blogtag", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 256, :null => false
  end

  create_table "blogs_post", :id => false, :force => true do |t|
    t.integer  "id",                                                  :null => false
    t.string   "title",             :limit => 256,                    :null => false
    t.text     "text",                                                :null => false
    t.datetime "submit_date",                                         :null => false
    t.datetime "date_modified",                                       :null => false
    t.boolean  "is_published",                     :default => false, :null => false
    t.boolean  "is_deleted",                       :default => false, :null => false
    t.integer  "blog_id",                                             :null => false
    t.integer  "photo_id"
    t.integer  "posted_by_user_id",                                   :null => false
    t.integer  "posted_by_id",                                        :null => false
    t.boolean  "flagged",                          :default => false, :null => false
    t.integer  "flagged_by_id"
    t.text     "flag_comment",                     :default => "",    :null => false
    t.tsvector "search_tsv"
  end

  create_table "blogs_post_tags", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "post_id",    :null => false
    t.integer "blogtag_id", :null => false
  end

  create_table "calendars_event", :id => false, :force => true do |t|
    t.integer  "id",                                                                    :null => false
    t.string   "name",                :limit => 100,                                    :null => false
    t.string   "abbreviation",        :limit => 20,                                     :null => false
    t.integer  "type_id"
    t.date     "date",                                                                  :null => false
    t.boolean  "all_day",                            :default => false,                 :null => false
    t.time     "start"
    t.time     "end"
    t.text     "address",                                                               :null => false
    t.text     "directions",                                                            :null => false
    t.text     "description",                                                           :null => false
    t.datetime "created_on",                         :default => '2009-01-10 05:38:00', :null => false
    t.datetime "modified_on",                                                           :null => false
    t.integer  "creator_id",                                                            :null => false
    t.string   "status",              :limit => 2,   :default => "A",                   :null => false
    t.string   "recurring",           :limit => 2,   :default => "N",                   :null => false
    t.integer  "recurring_parent_id"
    t.integer  "metadata_id"
  end

  create_table "calendars_event_members", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "event_id",  :null => false
    t.integer "member_id", :null => false
  end

  create_table "calendars_event_partners", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "event_id",   :null => false
    t.integer "partner_id", :null => false
  end

  create_table "calendars_event_staff", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "event_id",   :null => false
    t.integer "persona_id", :null => false
  end

  create_table "calendars_eventmeta", :id => false, :force => true do |t|
    t.integer "id",                                                                   :null => false
    t.integer "pairs_invited_cnt",                                   :default => 0,   :null => false
    t.integer "pairs_attended_cnt",                                  :default => 0,   :null => false
    t.decimal "pairs_attendance_perc", :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "stood_up_perc",         :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "rsvp_noshow_perc",      :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.integer "pair_rsvp_yes_cnt",                                   :default => 0,   :null => false
    t.integer "mentee_rsvp_yes_cnt",                                 :default => 0,   :null => false
    t.integer "mentor_rsvp_yes_cnt",                                 :default => 0,   :null => false
    t.integer "pair_rsvp_no_cnt",                                    :default => 0,   :null => false
    t.integer "pair_no_response_cnt",                                :default => 0,   :null => false
  end

  create_table "calendars_eventtype", :id => false, :force => true do |t|
    t.integer  "id",                                                            :null => false
    t.string   "name",        :limit => 100,                                    :null => false
    t.string   "color",       :limit => 7,   :default => "#0000FF",             :null => false
    t.string   "text_color",  :limit => 7,   :default => "#0000FF",             :null => false
    t.integer  "member_id"
    t.datetime "created_on",                 :default => '2009-01-10 05:38:00', :null => false
    t.datetime "modified_on",                                                   :null => false
    t.boolean  "active",                     :default => true,                  :null => false
    t.boolean  "fixed",                      :default => false,                 :null => false
    t.integer  "creator_id"
  end

  create_table "calendars_invitation", :id => false, :force => true do |t|
    t.integer  "id",                                                           :null => false
    t.integer  "event_id",                                                     :null => false
    t.string   "rsvp",         :limit => 2, :default => "NR",                  :null => false
    t.datetime "created",                   :default => '2009-01-10 05:38:09', :null => false
    t.datetime "modified",                                                     :null => false
    t.boolean  "attended",                  :default => false,                 :null => false
    t.integer  "invitee_id",                                                   :null => false
    t.integer  "invitor_id",                                                   :null => false
    t.boolean  "message_sent",              :default => false,                 :null => false
    t.text     "rsvp_comment",              :default => "",                    :null => false
    t.string   "status",       :limit => 2, :default => "A",                   :null => false
  end

  create_table "calendars_pairinvitation", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.integer "pair_id"
    t.integer "mentee_invitation_id"
    t.integer "mentor_invitation_id"
    t.integer "event_id",             :null => false
  end

  create_table "comment_comment", :id => false, :force => true do |t|
    t.integer  "id",                                                :null => false
    t.integer  "content_type_id",                                   :null => false
    t.integer  "object_id",                                         :null => false
    t.integer  "member_id"
    t.integer  "user_id"
    t.string   "name",            :limit => 100,                    :null => false
    t.text     "comment",                                           :null => false
    t.datetime "submit_date",                                       :null => false
    t.boolean  "is_published",                   :default => true,  :null => false
    t.boolean  "is_deleted",                     :default => false, :null => false
  end

  create_table "curriculum_curriculum", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 100, :null => false
  end

  create_table "curriculum_curriculumprompt", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "prompt_id",     :null => false
    t.integer "curriculum_id", :null => false
    t.integer "ordering"
  end

  create_table "curriculum_memberprompt", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "prompt_id", :null => false
    t.integer "member_id", :null => false
    t.integer "ordering"
  end

  create_table "curriculum_partnerprompt", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "prompt_id",  :null => false
    t.integer "partner_id", :null => false
    t.integer "ordering"
  end

  create_table "curriculum_prompt", :id => false, :force => true do |t|
    t.integer  "id",                                               :null => false
    t.string   "title",          :limit => 120,                    :null => false
    t.text     "description"
    t.text     "prompt_text",                                      :null => false
    t.integer  "status_id",                                        :null => false
    t.integer  "created_by_id"
    t.datetime "created_date"
    t.datetime "modified_date"
    t.integer  "modified_by_id"
    t.boolean  "is_deleted",                    :default => false, :null => false
  end

  create_table "curriculum_prompt_category", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "prompt_id"
    t.integer "prompttype_id"
  end

  create_table "curriculum_promptstatus", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 100, :null => false
  end

  create_table "curriculum_prompttype", :id => false, :force => true do |t|
    t.integer "id",                       :null => false
    t.string  "name",      :limit => 100, :null => false
    t.integer "member_id"
  end

  create_table "django_admin_log", :id => false, :force => true do |t|
    t.integer  "id",                             :null => false
    t.datetime "action_time",                    :null => false
    t.integer  "user_id",                        :null => false
    t.integer  "content_type_id"
    t.text     "object_id"
    t.string   "object_repr",     :limit => 200, :null => false
    t.integer  "action_flag",     :limit => 2,   :null => false
    t.text     "change_message",                 :null => false
  end

  create_table "django_content_type", :id => false, :force => true do |t|
    t.integer "id",                       :null => false
    t.string  "name",      :limit => 100, :null => false
    t.string  "app_label", :limit => 100, :null => false
    t.string  "model",     :limit => 100, :null => false
  end

  create_table "django_session", :id => false, :force => true do |t|
    t.string   "session_key",  :limit => 40, :null => false
    t.text     "session_data",               :null => false
    t.datetime "expire_date",                :null => false
  end

  create_table "djangodblog_dateglitchtest", :id => false, :force => true do |t|
    t.integer  "id",                                              :null => false
    t.text     "message",                                         :null => false
    t.datetime "def_datetime_now",                                :null => false
    t.datetime "datetime_now",                                    :null => false
    t.integer  "user_id",                                         :null => false
    t.string   "server_name",      :limit => 128,                 :null => false
    t.string   "char_date",        :limit => 128, :default => "", :null => false
    t.integer  "sys_date",                        :default => 0,  :null => false
    t.datetime "db_date"
  end

  create_table "djangodblog_error", :id => false, :force => true do |t|
    t.integer  "id",                                                            :null => false
    t.string   "class_name",  :limit => 128,                                    :null => false
    t.text     "message",                                                       :null => false
    t.text     "traceback",                                                     :null => false
    t.datetime "datetime",                   :default => '2009-04-18 03:19:56', :null => false
    t.string   "url",         :limit => 200
    t.string   "server_name", :limit => 128,                                    :null => false
  end

  create_table "djangodblog_errorbatch", :id => false, :force => true do |t|
    t.integer  "id",                                                            :null => false
    t.string   "class_name",  :limit => 128,                                    :null => false
    t.text     "message",                                                       :null => false
    t.text     "traceback",                                                     :null => false
    t.boolean  "is_resolved",                :default => false,                 :null => false
    t.integer  "times_seen",                 :default => 1,                     :null => false
    t.datetime "last_seen",                  :default => '2009-04-18 03:19:56', :null => false
    t.datetime "first_seen",                 :default => '2009-04-18 03:19:56', :null => false
    t.string   "url",         :limit => 200
    t.string   "server_name", :limit => 128,                                    :null => false
    t.string   "checksum",    :limit => 32,                                     :null => false
  end

  create_table "emails", :force => true do |t|
    t.integer  "from_user_id"
    t.string   "from_name"
    t.string   "subject"
    t.text     "content"
    t.datetime "time_sent"
    t.string   "ps_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "event_logger_loginevent", :id => false, :force => true do |t|
    t.integer  "id",       :null => false
    t.integer  "user_id",  :null => false
    t.datetime "occurred", :null => false
  end

  create_table "filters_savedfilterform", :id => false, :force => true do |t|
    t.integer  "id",                        :null => false
    t.string   "name",       :limit => 100, :null => false
    t.string   "key",        :limit => 100, :null => false
    t.integer  "user_id"
    t.integer  "persona_id"
    t.text     "data",                      :null => false
    t.datetime "created",                   :null => false
    t.datetime "updated",                   :null => false
  end

  create_table "imi_cache", :id => false, :force => true do |t|
    t.string   "cache_key", :null => false
    t.text     "value",     :null => false
    t.datetime "expires",   :null => false
  end

  create_table "iuser_academicfield", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 500, :null => false
  end

  create_table "iuser_assignedusertype", :id => false, :force => true do |t|
    t.integer "id",                                            :null => false
    t.integer "member_id"
    t.integer "order",       :limit => 2,                      :null => false
    t.integer "usertype_id",                                   :null => false
    t.string  "name",        :limit => 120,                    :null => false
    t.string  "abbr",        :limit => 20,                     :null => false
    t.boolean "fixed",                      :default => false, :null => false
  end

  create_table "iuser_career", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 500, :null => false
  end

  create_table "iuser_child", :id => false, :force => true do |t|
    t.integer  "id",            :null => false
    t.integer  "user_id",       :null => false
    t.datetime "date_of_birth"
  end

  create_table "iuser_collapseduser", :id => false, :force => true do |t|
    t.integer "id",      :null => false
    t.integer "user_id", :null => false
  end

  create_table "iuser_employer", :id => false, :force => true do |t|
    t.integer "id",   :null => false
    t.string  "name", :null => false
  end

  create_table "iuser_employer_members", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "employer_id", :null => false
    t.integer "member_id",   :null => false
  end

  create_table "iuser_intakefield", :id => false, :force => true do |t|
    t.integer "id",                                                  :null => false
    t.integer "member_id",                                           :null => false
    t.integer "question_id",                                         :null => false
    t.integer "assignedusertype_id",                                 :null => false
    t.boolean "is_hidden",                        :default => false, :null => false
    t.boolean "is_required",                      :default => false, :null => false
    t.integer "order",               :limit => 2,                    :null => false
    t.integer "instructions_id"
  end

  create_table "iuser_intakefieldquestion", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.text    "question",    :null => false
    t.string  "model_field", :null => false
  end

  create_table "iuser_intakefieldquestioninstructions", :id => false, :force => true do |t|
    t.integer "id",   :null => false
    t.text    "text"
  end

  create_table "iuser_interview", :id => false, :force => true do |t|
    t.integer  "id",                                                             :null => false
    t.string   "training_attendance",            :limit => 2,                    :null => false
    t.datetime "training_attendance_date"
    t.integer  "training_attendance_persona_id"
    t.datetime "training_date"
    t.datetime "training_date_date"
    t.integer  "training_date_persona_id"
    t.string   "background_check",               :limit => 2,                    :null => false
    t.datetime "background_check_date"
    t.integer  "background_check_persona_id"
    t.boolean  "employment_check_complete",                   :default => false, :null => false
    t.text     "notes",                                                          :null => false
  end

  create_table "iuser_match", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.date    "start",           :null => false
    t.date    "end"
    t.text    "mentee_comments", :null => false
    t.text    "mentor_comments", :null => false
  end

  create_table "iuser_matchhistory", :id => false, :force => true do |t|
    t.integer  "id",                                                :null => false
    t.datetime "start",                                             :null => false
    t.datetime "end"
    t.integer  "mentor_id"
    t.integer  "mentee_id"
    t.integer  "status",               :limit => 2,                 :null => false
    t.text     "mentor_comments",                   :default => "", :null => false
    t.text     "mentee_comments",                   :default => "", :null => false
    t.integer  "mentor_movement_2",                                 :null => false
    t.integer  "mentee_movement_2",                                 :null => false
    t.integer  "mentor_movement_4",                                 :null => false
    t.integer  "mentee_movement_4",                                 :null => false
    t.integer  "mentor_movement_6",                                 :null => false
    t.integer  "mentee_movement_6",                                 :null => false
    t.integer  "mentor_movement_10",                                :null => false
    t.integer  "mentee_movement_10",                                :null => false
    t.integer  "mentor_movement_life",                              :null => false
    t.integer  "mentee_movement_life",                              :null => false
  end

  create_table "iuser_occupation", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 500, :null => false
  end

  create_table "iuser_persona", :id => false, :force => true do |t|
    t.integer  "id",                                                                                      :null => false
    t.integer  "user_id",                                                                                 :null => false
    t.integer  "assigned_usertype_id",                                                                    :null => false
    t.string   "match_status",                          :limit => 20,  :default => "NA",                  :null => false
    t.integer  "match_id"
    t.boolean  "memberprofile_edit_messaging",                         :default => false,                 :null => false
    t.boolean  "memberprofile_edit_assign_curriculum",                 :default => false,                 :null => false
    t.boolean  "memberprofile_edit_intake_application",                :default => false,                 :null => false
    t.boolean  "memberprofile_evaluation_page",                        :default => false,                 :null => false
    t.boolean  "memberblog_editor",                                    :default => false,                 :null => false
    t.boolean  "bugreporting_ability_to_report_bugs",                  :default => false,                 :null => false
    t.string   "status",                                :limit => 4,   :default => "I",                   :null => false
    t.boolean  "hold",                                                 :default => false,                 :null => false
    t.integer  "hold_by_id"
    t.text     "hold_comment",                                         :default => "",                    :null => false
    t.string   "alerts_destination",                    :limit => 2,   :default => "I",                   :null => false
    t.boolean  "alerts_digest",                                        :default => false,                 :null => false
    t.datetime "intake_last_updated",                                  :default => '2009-06-17 19:08:12', :null => false
    t.text     "about",                                                :default => "",                    :null => false
    t.string   "status_blurb",                          :limit => 400, :default => "",                    :null => false
    t.boolean  "announcement_edit",                                    :default => false,                 :null => false
    t.boolean  "announcement_delete",                                  :default => false,                 :null => false
  end

  create_table "iuser_persona_network_personas", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "from_persona_id", :null => false
    t.integer "to_persona_id",   :null => false
  end

  create_table "iuser_persona_partners", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "persona_id", :null => false
    t.integer "partner_id", :null => false
  end

  create_table "iuser_persona_user_programs", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "persona_id",     :null => false
    t.integer "userprogram_id", :null => false
  end

  create_table "iuser_personalegacyuserid", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "user_id",    :null => false
    t.integer "persona_id", :null => false
  end

  create_table "iuser_racialgroup", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "group", :limit => 100, :null => false
  end

  create_table "iuser_referencecheck", :id => false, :force => true do |t|
    t.integer  "id",                                            :null => false
    t.string   "interview_status",                 :limit => 2
    t.datetime "interview_complete_date"
    t.integer  "interview_completed_by_id"
    t.string   "employment_status",                :limit => 2
    t.datetime "employment_complete_date"
    t.integer  "employment_completed_by_id"
    t.string   "first_reference_status",           :limit => 2
    t.datetime "first_reference_complete_date"
    t.integer  "first_reference_completed_by_id"
    t.string   "second_reference_status",          :limit => 2
    t.datetime "second_reference_complete_date"
    t.integer  "second_reference_completed_by_id"
    t.string   "third_reference_status",           :limit => 2
    t.datetime "third_reference_complete_date"
    t.integer  "third_reference_completed_by_id"
    t.string   "fourth_reference_status",          :limit => 2
    t.datetime "fourth_reference_complete_date"
    t.integer  "fourth_reference_completed_by_id"
    t.string   "background_status",                :limit => 2
    t.datetime "background_complete_date"
    t.integer  "background_completed_by_id"
    t.string   "training_status",                  :limit => 2
    t.datetime "training_complete_date"
    t.integer  "training_completed_by_id"
    t.boolean  "employment_check_complete"
    t.text     "notes"
    t.datetime "training_date"
    t.datetime "training_date_complete_date"
    t.integer  "training_date_completed_by_id"
    t.datetime "notes_complete_date"
    t.integer  "notes_completed_by_id"
    t.boolean  "interview_complete"
    t.boolean  "first_reference_complete"
    t.boolean  "second_reference_complete"
    t.boolean  "third_reference_complete"
    t.boolean  "fourth_reference_complete"
  end

  create_table "iuser_splituser", :id => false, :force => true do |t|
    t.integer "id",                       :null => false
    t.string  "orig_email", :limit => 75, :null => false
    t.integer "user_id",                  :null => false
  end

  create_table "iuser_user", :id => false, :force => true do |t|
    t.integer  "id",                                                                                :null => false
    t.string   "email",                      :limit => 256,                                         :null => false
    t.string   "password",                   :limit => 256,                                         :null => false
    t.string   "password_question",          :limit => 256,                                         :null => false
    t.string   "password_answer",            :limit => 256,                                         :null => false
    t.boolean  "legacy",                                    :default => false,                      :null => false
    t.string   "first_name",                 :limit => 256,                                         :null => false
    t.string   "last_name",                  :limit => 256,                                         :null => false
    t.string   "maiden_name",                :limit => 256,                                         :null => false
    t.string   "middle_name",                :limit => 256,                                         :null => false
    t.string   "gender",                     :limit => 1,   :default => "",                         :null => false
    t.string   "address1",                   :limit => 200, :default => "",                         :null => false
    t.string   "city",                       :limit => 256, :default => "",                         :null => false
    t.integer  "state_id"
    t.integer  "country_id"
    t.string   "zip_code",                   :limit => 256,                                         :null => false
    t.string   "work_address",               :limit => 200, :default => "",                         :null => false
    t.string   "work_city",                  :limit => 256, :default => "",                         :null => false
    t.integer  "work_state_id"
    t.string   "work_zip_code",              :limit => 256,                                         :null => false
    t.string   "previous_address",           :limit => 200, :default => "",                         :null => false
    t.string   "previous_city",              :limit => 256, :default => "",                         :null => false
    t.integer  "previous_state_id"
    t.string   "previous_zip_code",          :limit => 256,                                         :null => false
    t.string   "primary_address",            :limit => 1,   :default => "",                         :null => false
    t.string   "home_phone",                 :limit => 60,                                          :null => false
    t.string   "work_phone",                 :limit => 60,                                          :null => false
    t.string   "cell_phone",                 :limit => 60,                                          :null => false
    t.string   "work_fax",                   :limit => 60,                                          :null => false
    t.string   "primary_phone_member",       :limit => 1,   :default => "",                         :null => false
    t.string   "primary_phone_staff",        :limit => 1,   :default => "",                         :null => false
    t.integer  "grade"
    t.string   "marital_status",             :limit => 1,                                           :null => false
    t.boolean  "has_children",                              :default => false,                      :null => false
    t.integer  "number_children",                           :default => 0,                          :null => false
    t.datetime "date_of_birth"
    t.datetime "application_submit_date"
    t.datetime "last_login",                                :default => '2009-01-10 05:37:59',      :null => false
    t.datetime "date_joined"
    t.datetime "last_modified_date"
    t.integer  "last_modified_by_id"
    t.boolean  "work_ny",                                   :default => false,                      :null => false
    t.boolean  "live_ny",                                   :default => false,                      :null => false
    t.string   "borough_ny",                 :limit => 256,                                         :null => false
    t.string   "neighborhood",               :limit => 256,                                         :null => false
    t.integer  "employer_id"
    t.string   "employer_other",             :limit => 100,                                         :null => false
    t.integer  "career_id"
    t.integer  "occupation_id"
    t.string   "job_title",                  :limit => 500,                                         :null => false
    t.string   "imentor_hear",               :limit => 30,                                          :null => false
    t.text     "imentor_other",                                                                     :null => false
    t.string   "affiliate_program",          :limit => 100,                                         :null => false
    t.boolean  "has_additional_email",                      :default => false,                      :null => false
    t.string   "additional_email",           :limit => 256,                                         :null => false
    t.string   "parent_name",                :limit => 100,                                         :null => false
    t.string   "parent_address",             :limit => 200, :default => "",                         :null => false
    t.string   "parent_city",                :limit => 256, :default => "",                         :null => false
    t.integer  "parent_state_id"
    t.string   "parent_zip_code",            :limit => 256,                                         :null => false
    t.string   "parent_home_phone",          :limit => 60,                                          :null => false
    t.string   "parent_work_phone",          :limit => 60,                                          :null => false
    t.string   "parent_cell_phone",          :limit => 60,                                          :null => false
    t.string   "parent_fax",                 :limit => 60,                                          :null => false
    t.string   "parent_contact",             :limit => 1,                                           :null => false
    t.boolean  "is_superuser",                              :default => false,                      :null => false
    t.string   "status",                     :limit => 2,   :default => "I",                        :null => false
    t.integer  "member_id"
    t.string   "photo",                      :limit => 100, :default => "upload/iuser/default.jpg", :null => false
    t.integer  "reference_check_id"
    t.string   "rating",                     :limit => 2,   :default => "N",                        :null => false
    t.string   "parent_email",               :limit => 256, :default => "",                         :null => false
    t.integer  "event_reminder_period",                     :default => 0,                          :null => false
    t.boolean  "event_reminder_is_internal",                :default => true,                       :null => false
    t.string   "highest_degree",             :limit => 500
  end

  create_table "iuser_user_academic_fields", :id => false, :force => true do |t|
    t.integer "id",               :null => false
    t.integer "user_id",          :null => false
    t.integer "academicfield_id", :null => false
  end

  create_table "iuser_user_colleges", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "user_id",    :null => false
    t.integer "college_id", :null => false
  end

  create_table "iuser_user_network_users", :id => false, :force => true do |t|
    t.integer "id",           :null => false
    t.integer "from_user_id", :null => false
    t.integer "to_user_id",   :null => false
  end

  create_table "iuser_user_racialgroup", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "user_id",        :null => false
    t.integer "racialgroup_id", :null => false
  end

  create_table "iuser_usertype", :id => false, :force => true do |t|
    t.integer "id",                       :null => false
    t.string  "type",      :limit => 120, :null => false
    t.string  "abbr",      :limit => 20,  :null => false
    t.integer "parent_id"
  end

  create_table "log_log", :id => false, :force => true do |t|
    t.integer  "id",                             :null => false
    t.integer  "content_type_id",                :null => false
    t.integer  "object_id",                      :null => false
    t.text     "message",                        :null => false
    t.string   "category",        :limit => 200, :null => false
    t.datetime "datetime",                       :null => false
  end

  create_table "log_monitoringlog", :id => false, :force => true do |t|
    t.integer  "id",       :null => false
    t.integer  "status",   :null => false
    t.text     "message",  :null => false
    t.text     "data",     :null => false
    t.datetime "datetime", :null => false
  end

  create_table "mailer_dontsendentry", :id => false, :force => true do |t|
    t.integer  "id",                       :null => false
    t.string   "to_address", :limit => 50, :null => false
    t.datetime "when_added",               :null => false
  end

  create_table "mailer_message", :id => false, :force => true do |t|
    t.integer  "id",                                                                :null => false
    t.string   "to_address",      :limit => 50,                                     :null => false
    t.string   "from_address",    :limit => 50,                                     :null => false
    t.string   "subject",         :limit => 100,                                    :null => false
    t.text     "message_body",                                                      :null => false
    t.datetime "when_added",                     :default => '2009-01-21 06:05:53', :null => false
    t.string   "priority",        :limit => 1,   :default => "2",                   :null => false
    t.string   "content_subtype", :limit => 100, :default => "",                    :null => false
  end

  create_table "mailer_messagelog", :id => false, :force => true do |t|
    t.integer  "id",                                                               :null => false
    t.string   "to_address",     :limit => 50,                                     :null => false
    t.string   "from_address",   :limit => 50,                                     :null => false
    t.string   "subject",        :limit => 100,                                    :null => false
    t.text     "message_body",                                                     :null => false
    t.datetime "when_added",                                                       :null => false
    t.string   "priority",       :limit => 1,                                      :null => false
    t.datetime "when_attempted",                :default => '2009-01-21 06:05:53', :null => false
    t.string   "result",         :limit => 1,                                      :null => false
    t.text     "log_message",                                                      :null => false
  end

  create_table "matching_matchingqueue", :id => false, :force => true do |t|
    t.integer  "id",                                                  :null => false
    t.integer  "persona_id"
    t.datetime "added"
    t.datetime "processing_started_on"
    t.integer  "processed_by_id"
    t.datetime "completed_on"
    t.string   "status",                :limit => 1, :default => "W", :null => false
  end

  create_table "matching_matchingworkerserver", :id => false, :force => true do |t|
    t.integer  "id",                                              :null => false
    t.string   "name",           :limit => 200,                   :null => false
    t.boolean  "active",                        :default => true, :null => false
    t.datetime "brought_online"
    t.datetime "went_offline"
  end

  create_table "matching_potentialmatch", :id => false, :force => true do |t|
    t.integer "id",                                                                     :null => false
    t.integer "mentee_id",                                                              :null => false
    t.integer "mentor_id",                                                              :null => false
    t.decimal "som",                     :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "career_som",              :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "academic_som",            :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "personal_som",            :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "unweighted_som",          :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "unweighted_career_som",   :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "unweighted_academic_som", :precision => 5, :scale => 2, :default => 0.0, :null => false
    t.decimal "unweighted_personal_som", :precision => 5, :scale => 2, :default => 0.0, :null => false
  end

  create_table "member_member", :id => false, :force => true do |t|
    t.integer  "id",                                                                              :null => false
    t.string   "name",                    :limit => 100,                                          :null => false
    t.string   "abbreviation",            :limit => 20,                                           :null => false
    t.string   "address",                 :limit => 256,                                          :null => false
    t.string   "city",                    :limit => 256,                                          :null => false
    t.integer  "state_id"
    t.string   "zip_code",                :limit => 256,                                          :null => false
    t.integer  "country_id"
    t.string   "phone",                   :limit => 256,                                          :null => false
    t.string   "fax_number",              :limit => 256,                                          :null => false
    t.integer  "time_zone_id"
    t.string   "picture_logo",            :limit => 256,                                          :null => false
    t.integer  "number_contracted_users"
    t.integer  "status_id"
    t.boolean  "is_type_template",                       :default => false,                       :null => false
    t.integer  "type_template_id"
    t.date     "member_sign_up_date"
    t.date     "member_expiration_date"
    t.date     "contract_start_date"
    t.date     "contract_end_date"
    t.string   "location",                :limit => 256,                                          :null => false
    t.string   "location_plural",         :limit => 256,                                          :null => false
    t.string   "geographic_area",         :limit => 256,                                          :null => false
    t.integer  "editor_language_id"
    t.string   "header_color",            :limit => 30,                                           :null => false
    t.string   "font_color",              :limit => 30,                                           :null => false
    t.string   "web_site",                :limit => 256,                                          :null => false
    t.string   "embed_url",               :limit => 256,                                          :null => false
    t.string   "url_name",                :limit => 256,                                          :null => false
    t.text     "about_site",                                                                      :null => false
    t.text     "travel_direction",                                                                :null => false
    t.datetime "last_modify_date"
    t.integer  "primary_contact_id"
    t.integer  "assigned_super_admin_id"
    t.integer  "modified_by_id"
    t.integer  "created_by_id"
    t.integer  "personal_event_type_id"
    t.string   "matching_template_type",  :limit => 2,   :default => "S",                         :null => false
    t.string   "logo",                    :limit => 100, :default => "upload/member/default.jpg", :null => false
  end

  create_table "member_member_admin_email_recipients", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "member_id", :null => false
    t.integer "user_id",   :null => false
  end

  create_table "member_memberimage", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.string   "_image",      :limit => 100, :null => false
    t.string   "_original",   :limit => 100, :null => false
    t.datetime "uploaded_on",                :null => false
    t.integer  "member_id",                  :null => false
  end

  create_table "member_memberlogo", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.string   "_image",      :limit => 100, :null => false
    t.string   "_original",   :limit => 100, :null => false
    t.datetime "uploaded_on",                :null => false
    t.integer  "member_id",                  :null => false
  end

  create_table "member_membermessages", :id => false, :force => true do |t|
    t.integer "id",                                         :null => false
    t.integer "member_id",                                  :null => false
    t.integer "order",                                      :null => false
    t.string  "key",       :limit => 100,                   :null => false
    t.string  "name",      :limit => 100,                   :null => false
    t.string  "subject",   :limit => 200,                   :null => false
    t.text    "text",                                       :null => false
    t.boolean "is_email",                 :default => true, :null => false
  end

  create_table "member_memberstatus", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "type", :limit => 120, :null => false
  end

  create_table "member_membertype", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "type", :limit => 120, :null => false
  end

  create_table "member_menteecustomizations", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "member_id", :null => false
  end

  create_table "member_mentorcustomizations", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "member_id", :null => false
  end

  create_table "member_userprogram", :id => false, :force => true do |t|
    t.integer  "id",                                             :null => false
    t.integer  "member_id",                                      :null => false
    t.string   "name",         :limit => 100,                    :null => false
    t.string   "abbr",         :limit => 20,                     :null => false
    t.datetime "created_date"
    t.boolean  "hidden",                      :default => false, :null => false
    t.integer  "ordering",                    :default => 0,     :null => false
  end

  create_table "message_contactgroup", :id => false, :force => true do |t|
    t.integer "id",                :null => false
    t.integer "first_contact_id"
    t.integer "second_contact_id"
    t.integer "group_id",          :null => false
  end

  create_table "message_email", :id => false, :force => true do |t|
    t.integer  "id",                                    :null => false
    t.integer  "sender_id"
    t.string   "subject",                               :null => false
    t.text     "content",                               :null => false
    t.integer  "priority",                              :null => false
    t.datetime "send_date"
    t.integer  "has_attachment"
    t.integer  "nr_recipients"
    t.integer  "nr_groups"
    t.boolean  "event_notification", :default => false, :null => false
    t.boolean  "legacy",             :default => false, :null => false
    t.text     "stripped_content",   :default => "",    :null => false
    t.tsvector "search_tsv"
  end

  create_table "message_emailattachment", :id => false, :force => true do |t|
    t.integer "id",                      :null => false
    t.integer "email_id",                :null => false
    t.string  "name",     :limit => 765, :null => false
    t.string  "type",     :limit => 765, :null => false
    t.integer "size",                    :null => false
    t.float   "ordering",                :null => false
  end

  create_table "message_emaildraft", :id => false, :force => true do |t|
    t.integer  "id",              :null => false
    t.integer  "sender_id"
    t.string   "subject"
    t.text     "content"
    t.integer  "priority"
    t.datetime "draft_date"
    t.text     "to_recipients"
    t.text     "cc_recipients"
    t.text     "bcc_recipients"
    t.text     "gto_recipients"
    t.text     "gcc_recipients"
    t.text     "gbcc_recipients"
  end

  create_table "message_emaildraftattachment", :id => false, :force => true do |t|
    t.integer "id",                      :null => false
    t.integer "email_id",                :null => false
    t.string  "name",     :limit => 765, :null => false
    t.string  "type",     :limit => 765, :null => false
    t.integer "size",                    :null => false
    t.float   "ordering",                :null => false
  end

  create_table "message_emailfolder", :id => false, :force => true do |t|
    t.integer "id",                                         :null => false
    t.integer "user_id"
    t.string  "name",     :limit => 765,                    :null => false
    t.float   "ordering"
    t.boolean "legacy",                  :default => false, :null => false
  end

  create_table "message_emailrecipient", :id => false, :force => true do |t|
    t.integer "id",                                 :null => false
    t.integer "email_id"
    t.integer "user_id"
    t.integer "recipient_type"
    t.integer "group_id"
    t.integer "folder_id"
    t.boolean "read_flag",       :default => false, :null => false
    t.boolean "legacy",          :default => false, :null => false
    t.text    "gto_recipients"
    t.text    "gcc_recipients"
    t.text    "gbcc_recipients"
    t.boolean "visible",         :default => true,  :null => false
  end

  create_table "message_group", :id => false, :force => true do |t|
    t.integer  "id",                                                                    :null => false
    t.string   "name",           :limit => 765
    t.string   "abbr",           :limit => 100
    t.integer  "type_id",                                                               :null => false
    t.text     "description"
    t.integer  "member_id"
    t.integer  "created_by_id"
    t.datetime "created_date"
    t.integer  "status_id",                                                             :null => false
    t.integer  "subtype"
    t.boolean  "allow_intercom",                :default => false,                      :null => false
    t.integer  "partner_id"
    t.integer  "oneway_id"
    t.string   "photo",          :limit => 100, :default => "upload/group/default.jpg", :null => false
    t.boolean  "legacy",                        :default => false,                      :null => false
    t.boolean  "legacy_auto",                   :default => false,                      :null => false
    t.boolean  "deleted",                       :default => false,                      :null => false
    t.integer  "owner_id"
    t.integer  "message_cnt",                   :default => 0,                          :null => false
  end

  create_table "message_grouppersona", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "group_id",   :null => false
    t.integer "persona_id", :null => false
  end

  create_table "message_groupstatus", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.string  "name", :limit => 50, :null => false
  end

  create_table "message_grouptype", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.string  "name", :limit => 50, :null => false
  end

  create_table "message_groupuser", :id => false, :force => true do |t|
    t.integer "id",       :null => false
    t.integer "group_id", :null => false
    t.integer "user_id",  :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notes_note", :id => false, :force => true do |t|
    t.integer  "id",                                                :null => false
    t.integer  "content_type_id",                                   :null => false
    t.integer  "object_id",                                         :null => false
    t.integer  "user_id"
    t.string   "name",            :limit => 100,                    :null => false
    t.text     "note",                                              :null => false
    t.datetime "submit_date",                                       :null => false
    t.boolean  "is_published",                   :default => true,  :null => false
    t.boolean  "is_deleted",                     :default => false, :null => false
    t.datetime "date_modified",                                     :null => false
    t.boolean  "is_legacy",                      :default => true,  :null => false
  end

  create_table "notes_supportcategory", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "name",  :limit => 100, :null => false
    t.integer "order",                :null => false
  end

  create_table "notes_supportnote", :id => false, :force => true do |t|
    t.integer  "id",                                               :null => false
    t.boolean  "has_support",                   :default => true,  :null => false
    t.integer  "admin_id"
    t.integer  "for_pair_id"
    t.integer  "for_partner_id"
    t.integer  "for_persona_id"
    t.string   "subject",        :limit => 100,                    :null => false
    t.text     "note",                                             :null => false
    t.integer  "total_time",                                       :null => false
    t.datetime "created_date",                                     :null => false
    t.datetime "date_modified",                                    :null => false
    t.boolean  "is_deleted",                    :default => false, :null => false
    t.boolean  "is_legacy",                     :default => false, :null => false
    t.boolean  "flagged",                       :default => false, :null => false
    t.integer  "flagged_by_id"
    t.text     "flag_comment",                  :default => "",    :null => false
  end

  create_table "notes_supportnote_categories", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.integer "supportnote_id",     :null => false
    t.integer "supportcategory_id", :null => false
  end

  create_table "notes_supportnote_copies_to", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "supportnote_id", :null => false
    t.integer "user_id",        :null => false
  end

  create_table "notes_supportnote_for_list", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "supportnote_id", :null => false
    t.integer "persona_id",     :null => false
  end

  create_table "notes_supportnote_for_pairs", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "supportnote_id",  :null => false
    t.integer "matchhistory_id", :null => false
  end

  create_table "notes_supportnote_for_partners", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "supportnote_id", :null => false
    t.integer "partner_id",     :null => false
  end

  create_table "notes_supportnote_who", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "supportnote_id", :null => false
    t.integer "supportwho_id",  :null => false
  end

  create_table "notes_supportwho", :id => false, :force => true do |t|
    t.integer "id",                                   :null => false
    t.string  "method", :limit => 1, :default => "P", :null => false
    t.string  "who",    :limit => 1, :default => "E", :null => false
    t.integer "time"
  end

  create_table "partners_partner", :id => false, :force => true do |t|
    t.integer "id",                                                                           :null => false
    t.string  "name",                :limit => 120,                                           :null => false
    t.integer "member_id",                                                                    :null => false
    t.integer "status_id",                                                                    :null => false
    t.string  "abbreviated_name",    :limit => 50,                                            :null => false
    t.text    "about",                                                                        :null => false
    t.string  "class_meeting_times",                                                          :null => false
    t.string  "location",                                                                     :null => false
    t.integer "country_id",                         :default => 334,                          :null => false
    t.string  "street_address",                                                               :null => false
    t.string  "city",                                                                         :null => false
    t.integer "state_id"
    t.string  "zip_code",            :limit => 10,                                            :null => false
    t.string  "phone",               :limit => 30,                                            :null => false
    t.string  "fax",                 :limit => 20,                                            :null => false
    t.string  "website",             :limit => 200,                                           :null => false
    t.date    "creation_date",                                                                :null => false
    t.integer "time_zone_id",                                                                 :null => false
    t.integer "obligation",          :limit => 2,   :default => 1,                            :null => false
    t.integer "admin_obligation",    :limit => 2,   :default => 1,                            :null => false
    t.boolean "legacy",                             :default => false,                        :null => false
    t.integer "teacher_contact_id"
    t.integer "member_contact_id"
    t.string  "photo",               :limit => 100, :default => "upload/partner/default.jpg", :null => false
    t.text    "directions"
    t.integer "email_obligation",    :limit => 2,                                             :null => false
    t.boolean "is_alumni",                                                                    :null => false
    t.boolean "is_dummy",                                                                     :null => false
  end

  create_table "partners_partner_user_programs", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "partner_id",     :null => false
    t.integer "userprogram_id", :null => false
  end

  create_table "partners_partnerstatus", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.string  "name", :limit => 50, :null => false
  end

  create_table "partners_session", :id => false, :force => true do |t|
    t.integer  "id",                                   :null => false
    t.string   "description",                          :null => false
    t.datetime "start"
    t.integer  "prompt_id"
    t.integer  "status_id",                            :null => false
    t.integer  "partner_id",                           :null => false
    t.datetime "end_date"
    t.boolean  "activity_recorded", :default => false, :null => false
  end

  create_table "partners_sessionstatus", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.string  "name", :limit => 50, :null => false
  end

  create_table "password_passwordreset", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.integer  "user_id",                    :null => false
    t.string   "random_value", :limit => 60, :null => false
    t.datetime "created_date"
    t.string   "email",        :limit => 75, :null => false
  end

  create_table "permissions_assignedcategory", :id => false, :force => true do |t|
    t.integer "id",                            :null => false
    t.integer "member_id",                     :null => false
    t.integer "category_id",                   :null => false
    t.boolean "enabled",     :default => true, :null => false
  end

  create_table "permissions_assignedpermission", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "assignedusertype_id", :null => false
    t.integer "permission_id",       :null => false
  end

  create_table "permissions_category", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "name",  :limit => 200, :null => false
    t.integer "order", :limit => 2,   :null => false
  end

  create_table "permissions_permission", :id => false, :force => true do |t|
    t.integer "id",                                             :null => false
    t.string  "code",         :limit => 100,                    :null => false
    t.string  "description",  :limit => 200,                    :null => false
    t.integer "category_id",                                    :null => false
    t.boolean "fine_grained",                :default => false, :null => false
    t.integer "order",        :limit => 2,                      :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ratings_pairrating", :id => false, :force => true do |t|
    t.integer "id",                                                               :null => false
    t.integer "pair_id",                                                          :null => false
    t.integer "period_id",                                                        :null => false
    t.integer "mentor_rating",                                 :default => 0,     :null => false
    t.integer "mentee_rating",                                 :default => 0,     :null => false
    t.date    "mentor_rated_on"
    t.date    "mentee_rated_on"
    t.boolean "ratings_filled",                                :default => false, :null => false
    t.decimal "variance",        :precision => 3, :scale => 2, :default => 0.0,   :null => false
  end

  create_table "ratings_ratingdefaults", :id => false, :force => true do |t|
    t.integer "id",                                         :null => false
    t.integer "member_id",                                  :null => false
    t.boolean "active",                  :default => false, :null => false
    t.date    "start_date"
    t.string  "frequency",  :limit => 2, :default => "1M",  :null => false
  end

  create_table "ratings_ratinginterval", :id => false, :force => true do |t|
    t.integer "id",                                         :null => false
    t.integer "partner_id",                                 :null => false
    t.boolean "active",                  :default => false, :null => false
    t.date    "start_date"
    t.string  "frequency",  :limit => 2, :default => "1M",  :null => false
  end

  create_table "ratings_ratingperiod", :id => false, :force => true do |t|
    t.integer "id",                        :null => false
    t.integer "partner_id",                :null => false
    t.integer "magnitude",  :default => 0, :null => false
    t.date    "start_date"
    t.date    "end_date"
  end

  create_table "reporting_alertafter", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "description", :limit => 256, :null => false
    t.string  "code",        :limit => 2,   :null => false
  end

  create_table "reporting_alertnotification", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "description", :limit => 256, :null => false
    t.string  "code",        :limit => 2,   :null => false
    t.string  "time_delta",  :limit => 2,   :null => false
  end

  create_table "reporting_alertnotify", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "description", :limit => 256, :null => false
    t.string  "code",        :limit => 2,   :null => false
  end

  create_table "reporting_allmatchemail", :id => false, :force => true do |t|
    t.integer  "id",                                 :null => false
    t.integer  "email_id",                           :null => false
    t.integer  "match_history_id",                   :null => false
    t.integer  "member_id",                          :null => false
    t.integer  "partner_id",                         :null => false
    t.datetime "send_date",                          :null => false
    t.boolean  "mentee_to_mentor", :default => true, :null => false
    t.integer  "orig_partner_id"
    t.integer  "sess_id"
  end

  create_table "reporting_allmatchsessions", :id => false, :force => true do |t|
    t.integer "ame_id",     :null => false
    t.integer "session_id", :null => false
  end

  create_table "reporting_emailalert", :id => false, :force => true do |t|
    t.integer "id",                                                :null => false
    t.string  "name",               :limit => 50,                  :null => false
    t.integer "created_by_id",                                     :null => false
    t.string  "frequency",          :limit => 2,                   :null => false
    t.string  "alerts_destination", :limit => 2,  :default => "I", :null => false
    t.boolean "is_active",                                         :null => false
  end

  create_table "reporting_emailalert_assignedusertypes", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "emailalert_id",       :null => false
    t.integer "assignedusertype_id", :null => false
  end

  create_table "reporting_emailalert_groups", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "emailalert_id", :null => false
    t.integer "group_id",      :null => false
  end

  create_table "reporting_emailalert_keywords", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.integer "emailalert_id",        :null => false
    t.integer "emailalertkeyword_id", :null => false
  end

  create_table "reporting_emailalert_members", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "emailalert_id", :null => false
    t.integer "member_id",     :null => false
  end

  create_table "reporting_emailalert_partners", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "emailalert_id", :null => false
    t.integer "partner_id",    :null => false
  end

  create_table "reporting_emailalert_usertypes", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "emailalert_id", :null => false
    t.integer "usertype_id",   :null => false
  end

  create_table "reporting_emailalertkeyword", :id => false, :force => true do |t|
    t.integer "id",                     :null => false
    t.string  "keyword", :limit => 100, :null => false
  end

  create_table "reporting_emailalertmatch", :id => false, :force => true do |t|
    t.integer  "id",           :null => false
    t.integer  "alert_id",     :null => false
    t.integer  "email_log_id", :null => false
    t.datetime "date_added",   :null => false
    t.datetime "date_to_send", :null => false
  end

  create_table "reporting_emailalertmatch_keywords", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.integer "emailalertmatch_id",   :null => false
    t.integer "emailalertkeyword_id", :null => false
  end

  create_table "reporting_emaillog", :id => false, :force => true do |t|
    t.integer  "id",                                                   :null => false
    t.datetime "sent_date",                                            :null => false
    t.integer  "sender_id",                                            :null => false
    t.integer  "user_type_id",                                         :null => false
    t.string   "partner_name_list", :limit => 2000,                    :null => false
    t.integer  "email_id",                                             :null => false
    t.string   "recipient_name",    :limit => 200,                     :null => false
    t.string   "recipient_url",     :limit => 200,                     :null => false
    t.integer  "persona_id"
    t.integer  "member_id"
    t.boolean  "flagged",                           :default => false, :null => false
    t.integer  "flagged_by_id"
    t.text     "flag_comment",                      :default => "",    :null => false
  end

  create_table "reporting_emaillog_groups", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "group_id",    :null => false
    t.integer "emaillog_id", :null => false
  end

  create_table "reporting_emaillog_partners", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "partner_id",  :null => false
    t.integer "emaillog_id", :null => false
  end

  create_table "reporting_emaillog_recipients", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "user_id",     :null => false
    t.integer "emaillog_id", :null => false
  end

  create_table "reporting_emailpairs", :id => false, :force => true do |t|
    t.integer  "id",                                  :null => false
    t.integer  "match_history_id",                    :null => false
    t.integer  "mentor_id",                           :null => false
    t.integer  "mentee_id",                           :null => false
    t.integer  "member_id",                           :null => false
    t.integer  "partner_id",                          :null => false
    t.integer  "session_id",                          :null => false
    t.datetime "session_start_date",                  :null => false
    t.datetime "session_end_date"
    t.integer  "mentor_to_mentee_cnt", :default => 0
    t.integer  "mentee_to_mentor_cnt", :default => 0
  end

  create_table "reporting_emailtrackeralert", :id => false, :force => true do |t|
    t.integer "id",                                                  :null => false
    t.string  "name",                 :limit => 50,                  :null => false
    t.integer "after_id",                                            :null => false
    t.integer "send_notification_id",                                :null => false
    t.integer "created_by_id",                                       :null => false
    t.integer "partner_id",                                          :null => false
    t.string  "alerts_destination",   :limit => 2,  :default => "I", :null => false
    t.boolean "is_active",                                           :null => false
    t.integer "notify_me_id",                                        :null => false
  end

  create_table "reporting_eventalertnotification", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "description", :limit => 256, :null => false
    t.string  "code",        :limit => 2,   :null => false
    t.string  "time_delta",  :limit => 2,   :null => false
  end

  create_table "reporting_eventlog", :id => false, :force => true do |t|
    t.integer "id",                                                                                           :null => false
    t.integer "event_id",                                                                                     :null => false
    t.string  "event_name",                                                                                   :null => false
    t.string  "event_url",                                                                                    :null => false
    t.date    "date",                                                                                         :null => false
    t.time    "start"
    t.time    "end"
    t.integer "event_type_id",                                                                                :null => false
    t.string  "event_type_name",                 :limit => 100,                                               :null => false
    t.string  "event_type_url",                                                                               :null => false
    t.integer "creator_id",                                                                                   :null => false
    t.integer "creator_user_id",                                                                              :null => false
    t.string  "creator_user_name",               :limit => 100,                                               :null => false
    t.string  "creator_user_url",                                                                             :null => false
    t.integer "creator_user_type_id"
    t.string  "creator_user_type_name",          :limit => 100,                                               :null => false
    t.integer "creator_assigned_user_type_id"
    t.string  "creator_assigned_user_type_name", :limit => 100,                                               :null => false
    t.string  "member_name",                     :limit => 100,                                               :null => false
    t.string  "partner_name",                    :limit => 100,                                               :null => false
    t.string  "partner_url",                                                                                  :null => false
    t.integer "invited_cnt",                                                                  :default => 0,  :null => false
    t.integer "attended_cnt",                                                                 :default => 0,  :null => false
    t.integer "rsvp_yes_cnt",                                                                 :default => 0,  :null => false
    t.integer "rsvp_no_cnt",                                                                  :default => 0,  :null => false
    t.integer "rsvp_nr_cnt",                                                                  :default => 0,  :null => false
    t.integer "rsvp_ni_cnt",                                                                  :default => 0,  :null => false
    t.string  "member_url",                                                                   :default => "", :null => false
    t.string  "status",                          :limit => 2,                                 :default => "", :null => false
    t.integer "pair_cnt",                                                                                     :null => false
    t.decimal "attended_perc",                                  :precision => 5, :scale => 2,                 :null => false
    t.decimal "rsvp_yes_perc",                                  :precision => 5, :scale => 2,                 :null => false
    t.decimal "rsvp_no_perc",                                   :precision => 5, :scale => 2,                 :null => false
    t.integer "rsvp_maybe_cnt",                                                                               :null => false
    t.decimal "rsvp_maybe_perc",                                :precision => 5, :scale => 2,                 :null => false
    t.decimal "rsvp_nr_perc",                                   :precision => 5, :scale => 2,                 :null => false
    t.decimal "rsvp_ni_perc",                                   :precision => 5, :scale => 2,                 :null => false
    t.integer "rsvp_nrni_cnt",                                                                                :null => false
    t.decimal "rsvp_nrni_perc",                                 :precision => 5, :scale => 2,                 :null => false
  end

  create_table "reporting_eventlog_groups", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "eventlog_id", :null => false
    t.integer "group_id",    :null => false
  end

  create_table "reporting_eventlog_members", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "eventlog_id"
    t.integer "member_id"
  end

  create_table "reporting_eventlog_partners", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "eventlog_id", :null => false
    t.integer "partner_id",  :null => false
  end

  create_table "reporting_eventtrackeralert", :id => false, :force => true do |t|
    t.integer "id",                                                  :null => false
    t.string  "name",                 :limit => 50,                  :null => false
    t.integer "send_notification_id",                                :null => false
    t.integer "created_by_id",                                       :null => false
    t.string  "alerts_destination",   :limit => 2,  :default => "I", :null => false
    t.boolean "is_active",                                           :null => false
  end

  create_table "reporting_eventtrackeralert_partners", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.integer "eventtrackeralert_id", :null => false
    t.integer "partner_id",           :null => false
  end

  create_table "reporting_matchcompletesession", :id => false, :force => true do |t|
    t.integer  "id",                                  :null => false
    t.integer  "match_history_id",                    :null => false
    t.integer  "session_id",                          :null => false
    t.datetime "session_start_date",                  :null => false
    t.datetime "session_end_date"
    t.integer  "member_id",                           :null => false
    t.integer  "orig_partner_id"
    t.integer  "partner_id"
    t.integer  "mentor_to_mentee_cnt", :default => 0
    t.integer  "mentee_to_mentor_cnt", :default => 0
  end

  create_table "reporting_matcheventtracker", :id => false, :force => true do |t|
    t.integer "id",                                                   :null => false
    t.integer "event_id",                                             :null => false
    t.integer "member_id",                                            :null => false
    t.integer "partner_id",                                           :null => false
    t.integer "match_history_id",                                     :null => false
    t.integer "mentor_id",                                            :null => false
    t.integer "mentee_id",                                            :null => false
    t.boolean "mentor_attended",                   :default => false, :null => false
    t.boolean "mentee_attended",                   :default => false, :null => false
    t.string  "mentor_rsvp",          :limit => 2,                    :null => false
    t.string  "mentee_rsvp",          :limit => 2,                    :null => false
    t.integer "match_history_status",              :default => 0,     :null => false
  end

  create_table "reporting_paeventtracker", :id => false, :force => true do |t|
    t.integer "id",                                         :null => false
    t.integer "event_id",                                   :null => false
    t.integer "member_id",                                  :null => false
    t.integer "partner_id",                                 :null => false
    t.integer "pa_id",                                      :null => false
    t.boolean "attended",                :default => false, :null => false
    t.string  "rsvp",       :limit => 2,                    :null => false
  end

  create_table "reporting_partnerhistory", :id => false, :force => true do |t|
    t.integer  "id",           :null => false
    t.integer  "partner_id",   :null => false
    t.integer  "match_id"
    t.datetime "added_date"
    t.datetime "removed_date"
  end

  create_table "reporting_reportinglog", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.datetime "last_update",                :null => false
    t.string   "report_name", :limit => 200, :null => false
  end

  create_table "reporting_reportinglogentry", :id => false, :force => true do |t|
    t.integer  "id",                     :null => false
    t.integer  "info_id",                :null => false
    t.string   "text",    :limit => 200, :null => false
    t.datetime "when",                   :null => false
  end

  create_table "reporting_switchedmatchtotal", :id => false, :force => true do |t|
    t.integer  "id",                                       :null => false
    t.integer  "match_history_id",                         :null => false
    t.integer  "member_id",                                :null => false
    t.integer  "partner_id",                               :null => false
    t.integer  "active_session_cnt",        :default => 0, :null => false
    t.integer  "mentor_email_session_cnt",  :default => 0, :null => false
    t.integer  "mentee_email_session_cnt",  :default => 0, :null => false
    t.integer  "perfect_email_session_cnt", :default => 0, :null => false
    t.integer  "mentor_to_mentee_cnt",      :default => 0, :null => false
    t.integer  "mentee_to_mentor_cnt",      :default => 0, :null => false
    t.integer  "total_cnt",                 :default => 0, :null => false
    t.datetime "when",                                     :null => false
  end

  create_table "resources_resource", :id => false, :force => true do |t|
    t.integer  "id",                                                   :null => false
    t.integer  "creator_id"
    t.string   "title",              :limit => 256,                    :null => false
    t.text     "description",                                          :null => false
    t.boolean  "is_featured",                       :default => false, :null => false
    t.datetime "submit_date",                                          :null => false
    t.datetime "date_modified",                                        :null => false
    t.datetime "deadline"
    t.boolean  "is_published",                      :default => false, :null => false
    t.boolean  "is_deleted",                        :default => false, :null => false
    t.integer  "creation_member_id"
    t.integer  "status",                                               :null => false
    t.integer  "resource_type",                                        :null => false
    t.text     "embed_code",                                           :null => false
    t.string   "link_name",          :limit => 500,                    :null => false
    t.string   "link",               :limit => 500,                    :null => false
    t.integer  "photo_id"
    t.integer  "attachment_id"
  end

  create_table "resources_resource_categories", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.integer "resource_id",         :null => false
    t.integer "resourcecategory_id", :null => false
  end

  create_table "resources_resource_sub_categories", :id => false, :force => true do |t|
    t.integer "id",                     :null => false
    t.integer "resource_id",            :null => false
    t.integer "resourcesubcategory_id", :null => false
  end

  create_table "resources_resource_tags", :id => false, :force => true do |t|
    t.integer "id",             :null => false
    t.integer "resource_id",    :null => false
    t.integer "resourcetag_id", :null => false
  end

  create_table "resources_resourceattachment", :id => false, :force => true do |t|
    t.integer "id",                        :null => false
    t.string  "attachment", :limit => 100, :null => false
    t.string  "name",       :limit => 100, :null => false
  end

  create_table "resources_resourcecategory", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "name",  :limit => 256, :null => false
    t.integer "order"
  end

  create_table "resources_resourcecategorysuggestion", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.string   "name",        :limit => 256, :null => false
    t.integer  "user_id"
    t.datetime "submit_date",                :null => false
  end

  create_table "resources_resourcediggs", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "member_id"
    t.integer "resource_id"
    t.integer "count"
  end

  create_table "resources_resourcediggs_users", :id => false, :force => true do |t|
    t.integer "id",               :null => false
    t.integer "resourcediggs_id", :null => false
    t.integer "user_id",          :null => false
  end

  create_table "resources_resourcephoto", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "photo", :limit => 100, :null => false
  end

  create_table "resources_resourcesubcategory", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "name",        :limit => 256, :null => false
    t.integer "category_id"
    t.integer "order"
  end

  create_table "resources_resourcesubcategorysuggestion", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.string   "name",        :limit => 256, :null => false
    t.integer  "user_id"
    t.datetime "submit_date",                :null => false
    t.integer  "category_id"
  end

  create_table "resources_resourcetag", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 256, :null => false
  end

  create_table "resources_resourceviews", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "member_id"
    t.integer "resource_id"
    t.integer "count"
  end

  create_table "resources_resourceviews_users", :id => false, :force => true do |t|
    t.integer "id",               :null => false
    t.integer "resourceviews_id", :null => false
    t.integer "user_id",          :null => false
  end

  create_table "resources_savedresource", :id => false, :force => true do |t|
    t.integer  "id",          :null => false
    t.integer  "user_id"
    t.integer  "resource_id"
    t.datetime "date_saved",  :null => false
    t.integer  "order"
  end

  create_table "smarttags_smarttag", :id => false, :force => true do |t|
    t.integer "id",                       :null => false
    t.string  "tag",       :limit => 100, :null => false
    t.string  "key",       :limit => 100, :null => false
    t.string  "attribute", :limit => 100, :null => false
  end

  create_table "south_migrationhistory", :id => false, :force => true do |t|
    t.integer  "id",        :null => false
    t.string   "app_name",  :null => false
    t.string   "migration", :null => false
    t.datetime "applied"
  end

  create_table "survey_answerresult", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "survey_id",   :null => false
    t.integer "question_id", :null => false
    t.integer "persona_id",  :null => false
    t.integer "result_id",   :null => false
  end

  create_table "survey_defaultanswer", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.integer "question_id",                :null => false
    t.text    "text"
    t.integer "min"
    t.integer "max"
    t.string  "lowtag",      :limit => 150
    t.string  "midtag",      :limit => 150
    t.string  "hitag",       :limit => 150
  end

  create_table "survey_defaultmatchanswer", :id => false, :force => true do |t|
    t.integer "id",                                                   :null => false
    t.integer "question_id",                                          :null => false
    t.text    "text"
    t.integer "min"
    t.integer "max"
    t.string  "lowtag",             :limit => 150
    t.string  "midtag",             :limit => 150
    t.string  "hitag",              :limit => 150
    t.boolean "pre",                               :default => true,  :null => false
    t.boolean "post",                              :default => false, :null => false
    t.integer "matching_answer_id", :limit => 2,   :default => 0,     :null => false
  end

  create_table "survey_defaultmatchquestion", :id => false, :force => true do |t|
    t.integer "id",                                                    :null => false
    t.string  "type",                 :limit => 10,                    :null => false
    t.text    "text",                                                  :null => false
    t.boolean "required",                                              :null => false
    t.boolean "for_mentor",                                            :null => false
    t.boolean "for_mentee",                                            :null => false
    t.boolean "pre",                                :default => true,  :null => false
    t.boolean "post",                               :default => false, :null => false
    t.integer "radio_limit",                        :default => 10,    :null => false
    t.integer "matching_points",      :limit => 2,  :default => 0,     :null => false
    t.integer "matching_points_max",  :limit => 2,  :default => 0,     :null => false
    t.integer "matching_question_id", :limit => 2,  :default => 0,     :null => false
    t.integer "category_id"
    t.integer "order",                :limit => 2,                     :null => false
  end

  create_table "survey_defaultquestion", :id => false, :force => true do |t|
    t.integer "id",                                          :null => false
    t.string  "type",       :limit => 10,                    :null => false
    t.text    "text",                                        :null => false
    t.boolean "required",                                    :null => false
    t.integer "order",                                       :null => false
    t.boolean "for_mentor",                                  :null => false
    t.boolean "for_mentee",                                  :null => false
    t.boolean "pre",                      :default => true,  :null => false
    t.boolean "post",                     :default => false, :null => false
  end

  create_table "survey_defaultreferenceanswer", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "question_id", :null => false
    t.text    "text"
  end

  create_table "survey_defaultreferencequestion", :id => false, :force => true do |t|
    t.integer "id",                              :null => false
    t.string  "type",              :limit => 5,  :null => false
    t.integer "order",                           :null => false
    t.text    "text",                            :null => false
    t.boolean "required",                        :null => false
    t.boolean "visible",                         :null => false
    t.string  "legacy_field_name", :limit => 50, :null => false
  end

  create_table "survey_intakeinstructions", :id => false, :force => true do |t|
    t.integer "id",                                        :null => false
    t.text    "text"
    t.integer "member_id"
    t.string  "type",      :limit => 1, :default => "S",   :null => false
    t.boolean "hidden",                 :default => false, :null => false
  end

  create_table "survey_matchinglog", :id => false, :force => true do |t|
    t.integer  "id",                                          :null => false
    t.integer  "user_id",                                     :null => false
    t.datetime "datetime", :default => '2009-04-09 18:12:40', :null => false
    t.text     "message",                                     :null => false
  end

  create_table "survey_referencequestionpermission", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "question_id",   :null => false
    t.integer "permission_id", :null => false
  end

  create_table "survey_result", :id => false, :force => true do |t|
    t.integer "id",        :null => false
    t.integer "answer_id"
    t.text    "text",      :null => false
  end

  create_table "survey_survey", :id => false, :force => true do |t|
    t.integer "id",                                              :null => false
    t.string  "name",          :limit => 100,                    :null => false
    t.string  "type",          :limit => 1,                      :null => false
    t.string  "abbreviation",  :limit => 50,                     :null => false
    t.text    "description",                                     :null => false
    t.date    "created_on",                                      :null => false
    t.string  "status",        :limit => 1,   :default => "N",   :null => false
    t.date    "close_date"
    t.boolean "splash_screen",                :default => false, :null => false
    t.string  "splash_title",  :limit => 150,                    :null => false
    t.text    "splash_text",                                     :null => false
    t.string  "view_results",  :limit => 1,   :default => "I",   :null => false
    t.integer "created_by_id"
    t.integer "member_id",                                       :null => false
  end

  create_table "survey_surveyanswer", :id => false, :force => true do |t|
    t.integer "id",                                                   :null => false
    t.integer "question_id",                                          :null => false
    t.text    "text"
    t.integer "min"
    t.integer "max"
    t.string  "lowtag",             :limit => 150
    t.string  "midtag",             :limit => 150
    t.string  "hitag",              :limit => 150
    t.integer "matching_answer_id", :limit => 2,   :default => 0,     :null => false
    t.integer "order",              :limit => 2,   :default => 0,     :null => false
    t.boolean "active",                            :default => true,  :null => false
    t.boolean "hidden",                            :default => false, :null => false
  end

  create_table "survey_surveyinvitation", :id => false, :force => true do |t|
    t.integer "id",                                               :null => false
    t.integer "survey_id",                                        :null => false
    t.integer "user_id",                                          :null => false
    t.string  "status",          :limit => 10,                    :null => false
    t.date    "invited_on",                                       :null => false
    t.date    "submit_date"
    t.boolean "invitation_sent",               :default => false, :null => false
  end

  create_table "survey_surveyquestion", :id => false, :force => true do |t|
    t.integer "id",                                                     :null => false
    t.string  "type",                 :limit => 10,                     :null => false
    t.integer "survey_id",                                              :null => false
    t.text    "text",                                                   :null => false
    t.boolean "required",                            :default => false, :null => false
    t.boolean "pre",                                 :default => false, :null => false
    t.boolean "post",                                :default => false, :null => false
    t.integer "pre_question_id"
    t.integer "radio_limit",                         :default => 10,    :null => false
    t.integer "matching_points",      :limit => 2,   :default => 0,     :null => false
    t.integer "matching_points_max",  :limit => 2,   :default => 0,     :null => false
    t.integer "matching_question_id", :limit => 2,   :default => 0,     :null => false
    t.integer "category_id"
    t.string  "abbr",                 :limit => 100,                    :null => false
    t.string  "legacy_field_name",    :limit => 50,                     :null => false
    t.integer "order",                :limit => 2,                      :null => false
    t.boolean "active",                              :default => true,  :null => false
    t.boolean "hidden",                              :default => false, :null => false
  end

  create_table "survey_surveyquestion_categories", :id => false, :force => true do |t|
    t.integer "id",                        :null => false
    t.integer "surveyquestion_id"
    t.integer "surveyquestioncategory_id"
  end

  create_table "survey_surveyquestioncategory", :id => false, :force => true do |t|
    t.integer "id",                                      :null => false
    t.string  "name",      :limit => 200,                :null => false
    t.integer "member_id"
    t.integer "order",     :limit => 2,   :default => 1, :null => false
    t.integer "survey_id"
  end

  create_table "thumbnail_kvstore", :id => false, :force => true do |t|
    t.string "key",   :limit => 200, :null => false
    t.text   "value",                :null => false
  end

  create_table "toolkits_savedtoolkit", :id => false, :force => true do |t|
    t.integer  "id",         :null => false
    t.integer  "user_id"
    t.integer  "toolkit_id"
    t.datetime "date_saved", :null => false
    t.integer  "order"
  end

  create_table "toolkits_toolkit", :id => false, :force => true do |t|
    t.integer  "id",                                              :null => false
    t.integer  "creator_id"
    t.string   "title",         :limit => 256,                    :null => false
    t.text     "description",                                     :null => false
    t.boolean  "is_featured",                  :default => false, :null => false
    t.datetime "submit_date",                                     :null => false
    t.datetime "date_modified",                                   :null => false
    t.datetime "deadline"
    t.boolean  "is_published",                 :default => false, :null => false
    t.boolean  "is_deleted",                   :default => false, :null => false
    t.integer  "status",                                          :null => false
    t.integer  "toolkit_type",                                    :null => false
    t.string   "embed_code",    :limit => 500,                    :null => false
    t.string   "link_name",     :limit => 500,                    :null => false
    t.string   "link",          :limit => 500,                    :null => false
    t.integer  "attachment_id"
    t.integer  "photo_id"
  end

  create_table "toolkits_toolkit_categories", :id => false, :force => true do |t|
    t.integer "id",                 :null => false
    t.integer "toolkit_id",         :null => false
    t.integer "toolkitcategory_id", :null => false
  end

  create_table "toolkits_toolkit_sub_categories", :id => false, :force => true do |t|
    t.integer "id",                    :null => false
    t.integer "toolkit_id",            :null => false
    t.integer "toolkitsubcategory_id", :null => false
  end

  create_table "toolkits_toolkit_tags", :id => false, :force => true do |t|
    t.integer "id",            :null => false
    t.integer "toolkit_id",    :null => false
    t.integer "toolkittag_id", :null => false
  end

  create_table "toolkits_toolkitattachment", :id => false, :force => true do |t|
    t.integer "id",                        :null => false
    t.string  "attachment", :limit => 100, :null => false
    t.string  "name",       :limit => 100, :null => false
  end

  create_table "toolkits_toolkitcategory", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "name",  :limit => 256, :null => false
    t.integer "order"
  end

  create_table "toolkits_toolkitcategorysuggestion", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.string   "name",        :limit => 256, :null => false
    t.integer  "user_id"
    t.datetime "submit_date",                :null => false
  end

  create_table "toolkits_toolkitdiggs", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "member_id"
    t.integer "toolkit_id"
    t.integer "count"
  end

  create_table "toolkits_toolkitdiggs_users", :id => false, :force => true do |t|
    t.integer "id",              :null => false
    t.integer "toolkitdiggs_id", :null => false
    t.integer "user_id",         :null => false
  end

  create_table "toolkits_toolkitphoto", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "photo", :limit => 100, :null => false
  end

  create_table "toolkits_toolkitsubcategory", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "name",        :limit => 256, :null => false
    t.integer "category_id"
    t.integer "order"
  end

  create_table "toolkits_toolkitsubcategorysuggestion", :id => false, :force => true do |t|
    t.integer  "id",                         :null => false
    t.string   "name",        :limit => 256, :null => false
    t.integer  "user_id"
    t.datetime "submit_date",                :null => false
    t.integer  "category_id"
  end

  create_table "toolkits_toolkittag", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 256, :null => false
  end

  create_table "toolkits_toolkitviews", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.integer "member_id"
    t.integer "toolkit_id"
    t.integer "count"
  end

  create_table "tracking_bannedip", :id => false, :force => true do |t|
    t.integer "id",                        :null => false
    t.string  "ip_address", :limit => nil, :null => false
  end

  create_table "tracking_untrackeduseragent", :id => false, :force => true do |t|
    t.integer "id",                     :null => false
    t.string  "keyword", :limit => 100, :null => false
  end

  create_table "tracking_visitor", :id => false, :force => true do |t|
    t.integer  "id",                                         :null => false
    t.string   "session_key",   :limit => 40,                :null => false
    t.string   "ip_address",    :limit => 20,                :null => false
    t.integer  "user_id"
    t.string   "user_agent",                                 :null => false
    t.string   "referrer",                                   :null => false
    t.string   "url",                                        :null => false
    t.integer  "page_views",                  :default => 0, :null => false
    t.datetime "session_start",                              :null => false
    t.datetime "last_update",                                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "utils_college", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "name", :limit => 100, :null => false
  end

  create_table "utils_country", :id => false, :force => true do |t|
    t.integer "id",                                   :null => false
    t.string  "name",  :limit => 100,                 :null => false
    t.string  "abbr",  :limit => 6,   :default => "", :null => false
    t.integer "order",                                :null => false
  end

  create_table "utils_editorlanguage", :id => false, :force => true do |t|
    t.integer "id",                                  :null => false
    t.string  "name",  :limit => 30,                 :null => false
    t.string  "abbr",  :limit => 6,  :default => "", :null => false
    t.integer "order",                               :null => false
  end

  create_table "utils_sitesetting", :id => false, :force => true do |t|
    t.integer "id",                   :null => false
    t.string  "name",  :limit => 100, :null => false
    t.string  "state"
  end

  create_table "utils_state", :id => false, :force => true do |t|
    t.integer "id",                                   :null => false
    t.string  "name",  :limit => 100,                 :null => false
    t.string  "abbr",  :limit => 6,   :default => "", :null => false
    t.integer "order",                                :null => false
  end

  create_table "utils_timezone", :id => false, :force => true do |t|
    t.integer "id",                                       :null => false
    t.string  "name",       :limit => 30,                 :null => false
    t.string  "abbr",       :limit => 6,  :default => "", :null => false
    t.integer "order",                                    :null => false
    t.integer "country_id",                               :null => false
  end

end
