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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170831142424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cadastros", force: :cascade do |t|
    t.string "nome"
    t.integer "parte_id"
    t.string "telefone"
    t.string "cpf"
    t.string "data_cadastro"
    t.string "local"
    t.integer "user_id"
    t.integer "visualizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opms", id: :serial, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "zip_code", default: "", null: false
    t.integer "parent_id"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_opms_on_parent_id"
  end

  create_table "partes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permission_roles", id: :serial, force: :cascade do |t|
    t.integer "permission_id"
    t.integer "role_id"
    t.index ["permission_id"], name: "index_permission_roles_on_permission_id"
    t.index ["role_id"], name: "index_permission_roles_on_role_id"
  end

  create_table "permissions", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "placements", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "opm_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opm_id"], name: "index_placements_on_opm_id"
    t.index ["user_id"], name: "index_placements_on_user_id"
  end

  create_table "processos_licitacao_andamentos", id: :serial, force: :cascade do |t|
    t.string "numero_processo"
    t.string "responsavel_processo_cpl"
    t.string "modalidade_licitacao"
    t.string "objeto"
    t.string "quantidade"
    t.string "registro_cge"
    t.date "data_publicacao_DOE"
    t.float "valor_ivestimento"
    t.string "empresa_vencedora"
    t.string "situacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "situations", id: :serial, force: :cascade do |t|
    t.string "status"
    t.string "functional"
    t.string "medical"
    t.string "juridical"
    t.string "special"
    t.string "alienation"
    t.string "disciplinary"
    t.string "gun_license"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacao_alts", force: :cascade do |t|
    t.integer "cadastro_id"
    t.string "informacoes"
    t.string "usuario"
    t.integer "visualizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacao_bloqs", force: :cascade do |t|
    t.integer "cadastro_id"
    t.string "informacoes"
    t.string "usuario"
    t.integer "visualizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacao_exclusaos", force: :cascade do |t|
    t.integer "cadastro_id"
    t.string "informacoes"
    t.string "usuario"
    t.integer "visualizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_permissions", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "permission_id"
    t.index ["permission_id"], name: "index_user_permissions_on_permission_id"
    t.index ["user_id"], name: "index_user_permissions_on_user_id"
  end

  create_table "user_roles", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "rank"
    t.boolean "military", default: true, null: false
    t.boolean "inactive", default: false, null: false
    t.integer "pants_size"
    t.integer "beret_size"
    t.integer "t_shirt_size"
    t.integer "boot_size"
    t.date "birth_date", null: false
    t.date "admission_date"
    t.string "registration", null: false
    t.string "cpf", null: false
    t.string "home_phone"
    t.string "mobile_phone", null: false
    t.string "address"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.boolean "active", default: true
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "opm_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["opm_id"], name: "index_users_on_opm_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "permission_roles", "permissions"
  add_foreign_key "permission_roles", "roles"
  add_foreign_key "placements", "opms"
  add_foreign_key "placements", "users"
  add_foreign_key "situations", "users"
  add_foreign_key "user_permissions", "permissions"
  add_foreign_key "user_permissions", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "users", "opms"
end
