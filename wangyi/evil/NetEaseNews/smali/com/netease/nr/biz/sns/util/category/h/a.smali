.class public Lcom/netease/nr/biz/sns/util/category/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;


# instance fields
.field private a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

.field private b:Landroid/content/Context;

.field private c:Lcom/yiliao/android/openapis/model/YLMediaMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/YLAPIFactory;->createYLAPI(Landroid/content/Context;)Lcom/yiliao/android/openapis/sdk/IYLAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0, p0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->registerHandler(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/category/h/a;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->isOpenYLChannel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->openYLChannel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/yiliao/android/openapis/model/YLMediaMessage;
    .locals 4

    if-nez p5, :cond_2

    const-string v0, ""

    move-object v1, v0

    :goto_0
    if-nez p5, :cond_3

    const-string v0, ""

    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b007c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_0
    new-instance v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-direct {v2}, Lcom/yiliao/android/openapis/model/YLMediaMessage;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/yiliao/android/openapis/model/YLWebpageObject;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/YLWebpageObject;-><init>()V

    iput-object v1, v0, Lcom/yiliao/android/openapis/model/YLWebpageObject;->webpageUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    :goto_2
    iput-object p2, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    iput-object p4, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    :cond_1
    :goto_3
    return-object v2

    :cond_2
    const-string v0, "yiliao_web_url"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string v0, "yiliao_img_url"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/yiliao/android/openapis/model/YLImageObject;

    invoke-direct {v1}, Lcom/yiliao/android/openapis/model/YLImageObject;-><init>()V

    iput-object v0, v1, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;

    iput-object v1, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/yiliao/android/openapis/model/YLTextObject;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/YLTextObject;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object p4, v0, Lcom/yiliao/android/openapis/model/YLTextObject;->text:Ljava/lang/String;

    :cond_6
    iput-object v0, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    goto :goto_2

    :cond_7
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v3, 0x64

    if-le v1, v3, :cond_8

    div-int/lit8 v0, v1, 0x64

    :cond_8
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v2, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0, p0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->unRegisterHandler(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->isOpenYLChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->unRegisterApp()V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->closeYLChannel()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/yiliao/android/openapis/model/YLMediaMessage;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->isOpenYLChannel()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->c:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    new-instance v0, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Req;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Req;-><init>()V

    iput-object p1, v0, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v1}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->isRegisteredApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v1, v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->sendShareReq(Lcom/yiliao/android/openapis/model/BaseReq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->c:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/util/category/h/a;->a()V

    goto :goto_0
.end method

.method public onResp(Lcom/yiliao/android/openapis/model/BaseResp;)V
    .locals 2

    invoke-virtual {p1}, Lcom/yiliao/android/openapis/model/BaseResp;->getType()I

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;

    iget-object v0, p1, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;->resultcode:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;->errorCode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;->resultcode:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "YLOpenApis_thirdsdkActivity"

    const-string v1, "request ok"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSysState(Lcom/yiliao/android/openapis/model/BaseState;)V
    .locals 3

    const v2, 0x9000

    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->a:Lcom/yiliao/android/openapis/sdk/IYLAPI;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/sdk/IYLAPI;->registerApp()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/h/a;->c:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/sns/util/category/h/a;->a(Lcom/yiliao/android/openapis/model/YLMediaMessage;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    const v1, 0x9002

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    if-lt v0, v2, :cond_0

    iget v0, p1, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/sns/util/category/h/a;->a(I)V

    goto :goto_0
.end method
