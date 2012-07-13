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

ActiveRecord::Schema.define(:version => 20120712182700) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "akts", :force => true do |t|
    t.datetime "data_akt"
    t.integer  "num_trub_oip"
    t.integer  "num_trub"
    t.integer  "konstr_id"
    t.integer  "zavod_id"
    t.integer  "tipdef_id"
    t.integer  "ntrub_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificates", :force => true do |t|
    t.datetime "date_issue"
    t.integer  "sizes_pipe_id"
    t.integer  "manufactur_id"
    t.integer  "conclusion_id"
    t.integer  "installation_site_id"
    t.integer  "gost_id"
    t.integer  "ty_id"
    t.integer  "represent_host_id"
    t.integer  "represent_trans_id"
    t.integer  "delegate_id"
    t.integer  "support_document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "number"
    t.integer  "type_pipe_id"
    t.integer  "instrumentation_id"
    t.integer  "cost"
  end

  create_table "conclusions", :force => true do |t|
    t.string   "output"
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cost_inputs", :force => true do |t|
    t.integer  "hour"
    t.integer  "material"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cost_menus", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costs", :force => true do |t|
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_pipes", :force => true do |t|
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "certific"
    t.string   "number_product"
  end

  create_table "delegates", :force => true do |t|
    t.string   "name_lab"
    t.integer  "certificate"
    t.datetime "period_valid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "job"
    t.integer  "certificate_competence"
    t.string   "type_nk"
    t.string   "level_nk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "notation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "downloads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
  end

  create_table "gosts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "installation_sites", :force => true do |t|
    t.string   "object"
    t.datetime "data"
    t.string   "joint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instrumentations", :force => true do |t|
    t.string   "name"
    t.string   "mark"
    t.datetime "date_verification"
    t.integer  "certificate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "konstrs", :force => true do |t|
    t.string   "name"
    t.string   "shot_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loadcertifics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "certific"
  end

  create_table "magazines", :force => true do |t|
    t.datetime "start"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturs", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_reports", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], :name => "index_models_on_email", :unique => true
  add_index "models", ["reset_password_token"], :name => "index_models_on_reset_password_token", :unique => true

  create_table "ntrubs", :force => true do |t|
    t.string   "name"
    t.string   "shot_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passport_pipes", :force => true do |t|
    t.integer  "passport_id"
    t.integer  "pipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passports", :force => true do |t|
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pipes", :force => true do |t|
    t.string   "notation"
    t.integer  "passport_pipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "data_pipe_id"
  end

  create_table "report_controls", :force => true do |t|
    t.datetime "date_start"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "represent_hosts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "job"
    t.string   "organization"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "represent_trans", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "job"
    t.string   "organization"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", :force => true do |t|
    t.string   "construction"
    t.string   "roundness"
    t.string   "stratification"
    t.string   "defect"
    t.string   "isolation"
    t.string   "stamp_valid"
    t.integer  "mass_init"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type_def"
    t.integer  "from_mark_butt"
    t.integer  "length"
    t.integer  "width"
    t.integer  "deep"
    t.integer  "thickness"
    t.string   "magnet"
    t.integer  "certificate_id"
    t.datetime "date_issue"
    t.datetime "application_isolation"
    t.integer  "pipe_id"
    t.string   "length_all"
    t.string   "wall_tickness"
    t.string   "outside_diameter"
    t.string   "mark_date"
    t.integer  "from_right_seam"
  end

  create_table "sizes_pipes", :force => true do |t|
    t.string   "bending_angle"
    t.string   "diameter_trunk"
    t.string   "wall_tickness"
    t.string   "strength_class"
    t.string   "pressure"
    t.string   "service_factor"
    t.string   "material"
    t.string   "climatic"
    t.string   "diameter_bore"
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "support_documents", :force => true do |t|
    t.string   "name"
    t.string   "name_product"
    t.datetime "date_issue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terras", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipdefs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_pipe_installation_sites", :force => true do |t|
    t.integer  "type_pipe_id"
    t.integer  "installation_site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_pipes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "xls", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zavods", :force => true do |t|
    t.string   "name"
    t.string   "shot_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
