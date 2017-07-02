.class public Lcom/netease/ad/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Z

.field private b:Lcom/netease/ad/b/d;

.field private c:Lcom/netease/ad/b/j;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netease/ad/b/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/b/a;->a:Z

    iput-object p1, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/netease/ad/b/a;)Lcom/netease/ad/b/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.netease.ad.action"

    const-string v2, "com.netease.ad.web"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    const-class v2, Lcom/netease/ad/AdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.netease.ad.action"

    const-string v2, "com.netease.ad.fullpic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/ad/AdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    const-class v2, Lcom/netease/ad/AdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.netease.ad.action"

    const-string v2, "com.netease.ad.video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/ad/AdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.netease.ad.action"

    const-string v2, "com.netease.ad.audio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/ad/AdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "AdAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adview action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v3}, Lcom/netease/ad/b/j;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ad/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ad/b/f;->a()Lcom/netease/ad/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v3}, Lcom/netease/ad/b/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/ad/b/f;->b(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->l()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "link_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/ad/b/a;->d:Landroid/content/Context;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d"

    const/16 v3, 0x258

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ad/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/netease/ad/b/a;->b:Lcom/netease/ad/b/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/ad/b/a;->b:Lcom/netease/ad/b/d;

    invoke-interface {v1}, Lcom/netease/ad/b/d;->a()V

    :cond_1
    iget-boolean v1, p0, Lcom/netease/ad/b/a;->a:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/netease/ad/b/a;->a:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "message_content"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/netease/ad/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    if-nez v2, :cond_8

    const-string v2, ""

    :cond_8
    invoke-direct {p0, v0, v1, v2}, Lcom/netease/ad/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "tel_number"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ad/b/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/ad/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "media_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ad/b/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "audio_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/ad/b/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/netease/ad/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/a;->b:Lcom/netease/ad/b/d;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/netease/ad/b/l;->a()Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-static {}, Lcom/netease/ad/b/l;->b()Landroid/view/animation/ScaleAnimation;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/netease/ad/b/b;

    invoke-direct {v3, p0, v0, v2}, Lcom/netease/ad/b/b;-><init>(Lcom/netease/ad/b/a;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Lcom/netease/ad/b/c;

    invoke-direct {v0, p0, p1}, Lcom/netease/ad/b/c;-><init>(Lcom/netease/ad/b/a;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/b/a;->c:Lcom/netease/ad/b/j;

    if-eqz v0, :cond_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ad/b/a;->a(Landroid/view/View;)V

    goto :goto_0
.end method
