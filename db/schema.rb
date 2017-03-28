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

ActiveRecord::Schema.define(version: 20170328142042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biens", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "valeur_empr"
    t.integer  "valeur_act"
    t.integer  "prix_acq"
    t.string   "nom"
    t.string   "localisation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "profit_subs"
    t.index ["client_id"], name: "index_biens_on_client_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "nom"
    t.string   "profession"
    t.string   "adresse"
    t.string   "portable"
    t.string   "mail"
    t.string   "categorie"
    t.string   "nationalite"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "prenom"
    t.date     "date_de_naissance"
    t.string   "genre"
  end

  create_table "dossiers", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "categorie"
    t.string   "nom"
    t.string   "adversaire"
    t.string   "juridiction"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "nb_enfant_a_charge"
    t.string   "regime"
    t.integer  "revenu_parent_debiteur"
    t.integer  "parent_debiteur"
    t.integer  "pension_alimentaire"
    t.index ["client_id"], name: "index_dossiers_on_client_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "content"
    t.integer  "position"
    t.boolean  "important"
    t.boolean  "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "biens", "clients"
  add_foreign_key "dossiers", "clients"
end
