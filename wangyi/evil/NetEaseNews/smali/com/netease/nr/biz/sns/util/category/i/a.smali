.class public Lcom/netease/nr/biz/sns/util/category/i/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lim/yixin/sdk/api/c;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yxb7d5da84ca9642ab97d73cd6301664ad"

    invoke-static {p1, v0}, Lim/yixin/sdk/api/h;->a(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->a:Lim/yixin/sdk/api/c;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->a:Lim/yixin/sdk/api/c;

    invoke-interface {v0}, Lim/yixin/sdk/api/c;->a()Z

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/16 v1, 0xc8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-static {v0, v1, v1}, Lcom/netease/util/c/e;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/nr/base/c/a/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/c/a/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/util/cache/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x50

    if-le v2, v3, :cond_0

    div-int/lit8 v0, v2, 0x50

    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204fd

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim/yixin/sdk/api/f;
    .locals 3

    if-nez p5, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v1}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lim/yixin/sdk/api/YXTextMessageData;

    invoke-direct {v0}, Lim/yixin/sdk/api/YXTextMessageData;-><init>()V

    iput-object p3, v0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    iput-object v0, v1, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    iput-object p3, v1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    const-string v0, "text"

    :goto_1
    new-instance v2, Lim/yixin/sdk/api/f;

    invoke-direct {v2}, Lim/yixin/sdk/api/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/sns/util/category/i/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lim/yixin/sdk/api/f;->a:Ljava/lang/String;

    iput-object v1, v2, Lim/yixin/sdk/api/f;->b:Lim/yixin/sdk/api/YXMessage;

    iput p1, v2, Lim/yixin/sdk/api/f;->c:I

    return-object v2

    :cond_0
    const-string v0, "yixin_webview_url"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lim/yixin/sdk/api/YXWebPageMessageData;

    invoke-direct {v2}, Lim/yixin/sdk/api/YXWebPageMessageData;-><init>()V

    iput-object v0, v2, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    iput-object v2, v1, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    iput-object p2, v1, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    iput-object p3, v1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/netease/nr/biz/sns/util/category/i/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/sns/util/category/i/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    const-string v0, "webpage"

    goto :goto_1

    :cond_2
    new-instance v0, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-direct {v0}, Lim/yixin/sdk/api/YXImageMessageData;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p4, v2}, Lcom/netease/nr/biz/sns/util/category/i/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    iput-object p3, v1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/sns/util/category/i/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    iput-object v0, v1, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    const-string v0, "img"

    goto :goto_1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->a:Lim/yixin/sdk/api/c;

    invoke-interface {v0}, Lim/yixin/sdk/api/c;->b()V

    return-void
.end method

.method public a(Lim/yixin/sdk/api/f;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/i/a;->a:Lim/yixin/sdk/api/c;

    invoke-interface {v0, p1}, Lim/yixin/sdk/api/c;->a(Lim/yixin/sdk/api/a;)Z

    return-void
.end method
