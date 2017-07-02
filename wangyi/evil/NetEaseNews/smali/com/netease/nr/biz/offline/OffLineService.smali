.class public Lcom/netease/nr/biz/offline/OffLineService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/netease/nr/base/activity/BaseApplication;

.field private b:Landroid/app/NotificationManager;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Landroid/app/Service;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->f:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->g:I

    new-instance v0, Lcom/netease/nr/biz/offline/h;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/offline/h;-><init>(Lcom/netease/nr/biz/offline/OffLineService;)V

    iput-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->i:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap;)J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/netease/nr/biz/offline/OffLineService;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-static {p1, p4, p2}, Lcom/netease/nr/biz/offline/a;->c(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p4, p2}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p4, p2}, Lcom/netease/nr/biz/offline/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p4, p2}, Lcom/netease/nr/biz/offline/a;->d(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    invoke-static {v0, p1}, Lcom/netease/util/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "full"

    iget-object v3, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    invoke-static {p1, v0, v3}, Lcom/netease/nr/biz/offline/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, p1}, Lcom/netease/nr/biz/offline/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    invoke-static {v0, p1, v3, p3}, Lcom/netease/nr/biz/offline/a;->a(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    add-long v0, v1, v3

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)Landroid/app/Notification;
    .locals 1

    invoke-static {p0, p1}, Lcom/netease/nr/biz/offline/b;->a(Landroid/content/Context;Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/offline/OffLineService;Landroid/os/Message;)Landroid/app/Notification;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/offline/OffLineService;->a(Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "tid"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tname"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private a(Landroid/app/NotificationManager;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f030071

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0x7f030072

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/offline/OffLineService;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/offline/OffLineService;->c()V

    return-void
.end method

.method private a()Z
    .locals 9

    const-wide/16 v5, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->i:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const-string v3, ""

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    move v1, v7

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->a:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const-string v3, ""

    move v2, v1

    move v4, v8

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->i:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v7

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v0, "top_columns"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "tid"

    aput-object v0, v2, v8

    const-string v0, "tname"

    aput-object v0, v2, v7

    const-string v3, "type=?"

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->a:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "\u7cbe\u9009"

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/offline/OffLineService;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->a:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "\u9605\u8bfb"

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/offline/OffLineService;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method static synthetic c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->b:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private c()V
    .locals 18

    const/4 v5, 0x0

    const-string v2, ""

    const-string v4, ""

    const-string v1, ""

    const-string v1, ""

    const-string v1, ""

    const-string v1, ""

    const-wide/16 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/netease/nr/biz/offline/OffLineService;->b()Ljava/util/List;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->b:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/offline/OffLineService;->a(Landroid/app/NotificationManager;)V

    if-eqz v11, :cond_9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v3, v1, 0x14

    const/4 v1, 0x0

    move v9, v1

    move-object/from16 v17, v2

    move v2, v5

    move-object/from16 v5, v17

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_9

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_a

    const-string v4, "tid"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "tname"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/netease/nr/biz/offline/OffLineService;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v5, "T1348647909107"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v10, 0x0

    const/16 v13, 0x14

    invoke-static {v5, v8, v10, v13}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v5}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface {v12}, Ljava/util/List;->clear()V

    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8, v12, v1, v5}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZ)V

    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v1, 0x0

    move v10, v1

    :goto_4
    if-ge v10, v13, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/netease/nr/biz/offline/OffLineService;->a()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "docid"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_4

    const-string v5, "docid"

    invoke-static {v1, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "imgsrc"

    invoke-static {v1, v14}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "isheadimg"

    invoke-static {v1, v15}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    const-string v15, "lmodify"

    invoke-static {v1, v15}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v1}, Lcom/netease/nr/biz/offline/OffLineService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    add-long v5, v6, v15

    const-string v1, "T1348647909107"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v7, v15}, Lcom/netease/nr/biz/offline/OffLineService;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap;)J

    move-result-wide v14

    add-long v6, v5, v14

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    :cond_4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v10, 0x0

    const/16 v13, 0x14

    invoke-static {v5, v8, v10, v13}, Lcom/netease/nr/biz/news/a/i;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v5}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->i:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const/4 v7, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v7, v15}, Lcom/netease/nr/biz/offline/OffLineService;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap;)J

    move-result-wide v14

    add-long v6, v5, v14

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v5, v8

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/offline/OffLineService;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_a
    move-object v8, v5

    goto/16 :goto_3
.end method

.method static synthetic d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->a:Lcom/netease/nr/base/activity/BaseApplication;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/offline/OffLineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    iput-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->a:Lcom/netease/nr/base/activity/BaseApplication;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/offline/OffLineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->b:Landroid/app/NotificationManager;

    iput-object p0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/offline/OffLineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const v1, 0x7f0b00ca

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    const v1, 0x7f0b01e3

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/offline/OffLineService;->h:Landroid/app/Service;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/a;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/nr/biz/offline/g;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/offline/g;-><init>(Lcom/netease/nr/biz/offline/OffLineService;)V

    invoke-virtual {v0}, Lcom/netease/nr/biz/offline/g;->start()V

    goto :goto_0
.end method
