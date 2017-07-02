.class public Lcom/netease/nr/base/db/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS top_columns"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS more_columns"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS vote_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS collect_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS news_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS comments_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS photo_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS pic"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS article_read_status_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS oauth_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS city_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS video_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS app_recommend"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS msg_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS recommend_columns"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE  IF NOT EXISTS top_columns (_id INTEGER PRIMARY KEY AUTOINCREMENT,tname NTEXT,tid NTEXT,icon NTEXT,ename NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS local_top_columns (_id INTEGER PRIMARY KEY AUTOINCREMENT,tname NTEXT,tid NTEXT,icon NTEXT,ename NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS more_columns (_id INTEGER PRIMARY KEY AUTOINCREMENT,tname NTEXT,ename NTEXT,tid NTEXT,icon NTEXT,status NTEXT,num NTEXT,headline NTEXT,pid NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS vote_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,vote_id NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS collect_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,collect_path NTEXT,collect_id NTEXT,collect_title NTEXT,collect_type NTEXT,create_at NTEXT,collect_comment_num NTEXT,collect_icon_url NTEXT,collect_summary NTEXT,image_loacl NTEXT,image_channel NTEXT,image_set NTEXT,image_pic_num NTEXT,is_delete NTEXT,comment_boardid NTEXT,comment_postid NTEXT,ischecked NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS news_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,news_col_id NTEXT,news_doc_id NTEXT,news_img_src NTEXT,news_digest NTEXT,news_reply_count NTEXT,news_url NTEXT,news_title NTEXT,news_ptime NTEXT,news_subtitle NTEXT,news_is_first NTEXT,news_is_read NTEXT,news_is_hasimg NTEXT,news_special_id NTEXT,news_index NTEXT,news_special_tname NTEXT,NTES NTEXT,TAG NTEXT,partner NTEXT,lmodify NTEXT,news_is_load_more NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS comments_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,comments_col_id NTEXT,comments_doc_id NTEXT,comments_reply_count NTEXT,comments_title NTEXT,comments_tie NTEXT,comments_author NTEXT,comments_reply_board NTEXT,comments_postid NTEXT,comments_floor NTEXT,comments_is_read NTEXT,comments_ptime NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS photo_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,photo_column NTEXT,photo_setid INTEGER,photo_clientcover NTEXT,photo_clientcover_new NTEXT,photo_setname NTEXT,photo_imgsum NTEXT,photo_date NTEXT,photo_replynum NTEXT,news_is_load_more NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS pic (_id INTEGER PRIMARY KEY AUTOINCREMENT,pic_setid NTEXT,pic_channel NTEXT,pic_date NTEXT,pic_json NTEXT,pic_boardid NTEXT,pic_docid NTEXT,pic_setname NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS article_read_status_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,article_read_col_id NTEXT,article_read_doc_id NTEXT,article_read_date NTEXT,article_read_is_read NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS oauth_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,oauth_type NTEXT,oauth_token NTEXT,oauth_token_secret NTEXT,oauth_name NTEXT,oauth_userid NTEXT,oauth_profile_img NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS city_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,city_name NTEXT,city_province NTEXT,city_pinyin NTEXT,city_select_count INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS video_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,video_col_id NTEXT,video_reply_count NTEXT,video_digest NTEXT,video_digest_all NTEXT,video_title NTEXT,video_hits NTEXT,video_cover NTEXT,video_reply_board NTEXT,video_reply_id NTEXT,video_mp4_url NTEXT,video_length NTEXT,video_vurl NTEXT,video_vid NTEXT,video_ptime NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS app_recommend (_id INTEGER PRIMARY KEY AUTOINCREMENT,recommend_img_src NTEXT,recommend_priority INTEGER,recommend_schema NTEXT,recommend_stitle NTEXT,recommend_title NTEXT,recommend_url NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS msg_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,imgsrc NTEXT,title NTEXT,content NTEXT,datetime NTEXT,tag NTEXT,type NTEXT,msgid NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS recommend_columns (_id INTEGER PRIMARY KEY AUTOINCREMENT,tname NTEXT,ename NTEXT,tid NTEXT,icon NTEXT,status NTEXT,num NTEXT,headline NTEXT,cid NTEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
