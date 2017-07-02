.class public abstract Lcom/netease/nr/biz/widget/WidgetService;
.super Landroid/app/Service;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/RemoteViews;

.field private d:Ljava/util/List;

.field private e:Lcom/netease/nr/biz/widget/d;

.field private f:Lcom/netease/nr/biz/widget/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/widget/WidgetService;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netease/nr/base/c/a/i;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/i;

    move-result-object v6

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p1, v7, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f02002f

    invoke-virtual {v0, p4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->h()[I

    move-result-object v0

    aget v0, v0, v7

    if-ne p4, v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p3, v0, v1}, Lcom/netease/util/c/e;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/netease/nr/base/c/a/i;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    move-object v3, p3

    goto :goto_0

    :cond_2
    invoke-virtual {v6, p3}, Lcom/netease/nr/base/c/a/i;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;IIIIII)Ljava/lang/String;
    .locals 12

    const-string v1, "docid"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "title"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "digest"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "replyCount"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "imgsrc"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const-string v1, ""

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_0
    iget-object v9, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const/4 v10, 0x0

    invoke-virtual {v9, p3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v9, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v10, 0x7f0c02a7

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    iget-object v9, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    move/from16 v0, p4

    invoke-virtual {v9, v0, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p5, :cond_2

    iget-object v6, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    move/from16 v0, p5

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const v1, 0x7f0b00dd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p6, :cond_3

    iget-object v5, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    move/from16 v0, p6

    invoke-virtual {v5, v0, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    iget-object v2, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    move/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p7

    move v6, p3

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/netease/nr/biz/widget/WidgetService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    iget-object v9, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const/16 v10, 0x8

    invoke-virtual {v9, p3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v0

    mul-int v2, p2, v0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int v4, v2, v0

    if-le v3, v4, :cond_0

    add-int v3, v2, v0

    if-ltz v3, :cond_0

    add-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/netease/nr/biz/widget/WidgetService;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-static {p0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->c(Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->b(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->i()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v2, 0x7f0c02a7

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v2, 0x7f0c02a8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->k()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->l()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/netease/nr/biz/widget/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;[Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq p1, v1, :cond_8

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/widget/c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->m()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->d()[I

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->e()[I

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->f()[I

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->g()[I

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->h()[I

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v12, v3

    :goto_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v2

    rem-int v11, v12, v2

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_3

    if-nez v15, :cond_2

    aget v5, v13, v11

    aget v6, v14, v11

    const/4 v7, 0x0

    aget v8, v16, v11

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/netease/nr/biz/widget/WidgetService;->a(Landroid/content/Context;Ljava/util/Map;IIIIII)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v2, v11

    goto :goto_1

    :cond_2
    aget v5, v13, v11

    aget v6, v14, v11

    aget v7, v15, v11

    aget v8, v16, v11

    aget v9, v17, v11

    move-object/from16 v0, p0

    iget v10, v0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/netease/nr/biz/widget/WidgetService;->a(Landroid/content/Context;Ljava/util/Map;IIIIII)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    aget v3, v13, v11

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v2, v11

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v3

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    aget v4, v13, v2

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/widget/c;->cancel(Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/widget/WidgetService;->b(Ljava/util/List;)V

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'#ffffffff\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<font color=\'#ffffffff\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/widget/WidgetService;->j()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f0c02a0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c02a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c02c0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/widget/WidgetService;->d(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/widget/WidgetService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/widget/WidgetService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/widget/WidgetService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/widget/WidgetService;->c(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->b()I

    move-result v1

    rem-int/2addr v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/biz/widget/WidgetService;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    return v0
.end method

.method private b(Landroid/widget/RemoteViews;)V
    .locals 4

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const v0, 0x7f0c02a0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c02a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c02c0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0c02a8

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/widget/WidgetService;->d(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2

    invoke-static {p0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/widget/c;

    iget v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {v0, p0, v1, p1}, Lcom/netease/nr/biz/widget/c;-><init>(Lcom/netease/nr/biz/widget/WidgetService;ILjava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/widget/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private c(Landroid/widget/RemoteViews;)V
    .locals 4

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const v0, 0x7f0c02a0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c02a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0c02c0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0c02a8

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/widget/WidgetService;->d(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Landroid/widget/RemoteViews;)V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->k()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->l()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/netease/nr/biz/widget/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;[Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/widget/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->p()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private p()V
    .locals 2

    invoke-static {p0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/widget/d;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(Landroid/widget/RemoteViews;)V

    new-instance v0, Lcom/netease/nr/biz/widget/d;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/widget/d;-><init>(Lcom/netease/nr/biz/widget/WidgetService;)V

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/widget/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private q()V
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/biz/widget/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(I)V

    return-void
.end method

.method private r()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-static {p0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->s()V

    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->p()V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0c02a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0c02a7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0c02c0

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    :cond_0
    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(I)V

    return-void
.end method

.method private u()V
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    iget v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->a:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    :cond_0
    iget v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(I)V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract b()I
.end method

.method protected abstract c()[Ljava/lang/String;
.end method

.method protected abstract d()[I
.end method

.method protected abstract e()[I
.end method

.method protected abstract f()[I
.end method

.method protected abstract g()[I
.end method

.method protected abstract h()[I
.end method

.method protected abstract i()I
.end method

.method protected abstract j()I
.end method

.method protected abstract k()Ljava/lang/Class;
.end method

.method protected abstract l()Ljava/lang/Class;
.end method

.method protected abstract m()V
.end method

.method protected abstract n()Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->o()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iput-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/widget/d;->cancel(Z)Z

    iput-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->e:Lcom/netease/nr/biz/widget/d;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/widget/c;->cancel(Z)Z

    iput-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->f:Lcom/netease/nr/biz/widget/c;

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/widget/WidgetService;->a(Ljava/util/List;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/widget/WidgetService;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->t()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->u()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->r()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iput v4, p0, Lcom/netease/nr/biz/widget/WidgetService;->b:I

    invoke-direct {p0}, Lcom/netease/nr/biz/widget/WidgetService;->q()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetService;->c:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/widget/WidgetService;->b(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method
