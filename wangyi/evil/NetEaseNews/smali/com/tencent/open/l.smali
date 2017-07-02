.class public Lcom/tencent/open/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/tencent/open/l;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/open/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/l;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/l;->b:Lcom/tencent/open/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/tencent/open/l;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/l;->m:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tencent/open/l;
    .locals 1

    sget-object v0, Lcom/tencent/open/l;->b:Lcom/tencent/open/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/open/l;

    invoke-direct {v0}, Lcom/tencent/open/l;-><init>()V

    sput-object v0, Lcom/tencent/open/l;->b:Lcom/tencent/open/l;

    :cond_0
    sget-object v0, Lcom/tencent/open/l;->b:Lcom/tencent/open/l;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ServerPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    :cond_1
    packed-switch p2, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    if-nez p1, :cond_2

    const-string v0, "auth://tauth.qq.com/"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/open/l;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "RedirectUrl"

    const-string v2, "auth://tauth.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->d:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tencent/open/l;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_4

    const-string v0, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/open/l;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "AuthorizeCgi"

    const-string v2, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->e:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/tencent/open/l;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_6

    const-string v0, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/open/l;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "StoryUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->f:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/tencent/open/l;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    if-nez p1, :cond_8

    const-string v0, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/open/l;->g:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "InviteUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->g:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/tencent/open/l;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    if-nez p1, :cond_a

    const-string v0, "http://wspeed.qq.com/w.cgi"

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tencent/open/l;->h:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "ReportUrl"

    const-string v2, "http://wspeed.qq.com/w.cgi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->h:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/tencent/open/l;->h:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    if-nez p1, :cond_c

    const-string v0, "https://openmobile.qq.com/"

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/open/l;->i:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "GraphBaseUrl"

    const-string v2, "https://openmobile.qq.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->i:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/tencent/open/l;->i:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    if-nez p1, :cond_e

    const-string v0, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/tencent/open/l;->j:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "BragUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->j:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lcom/tencent/open/l;->j:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    if-nez p1, :cond_10

    const-string v0, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/tencent/open/l;->k:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "AskUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->k:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lcom/tencent/open/l;->k:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    if-nez p1, :cond_12

    const-string v0, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/tencent/open/l;->l:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "GiftUrl"

    const-string v2, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->l:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Lcom/tencent/open/l;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    if-nez p1, :cond_14

    const-string v0, "http://qzs.qq.com"

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/tencent/open/l;->m:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/open/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "LocalStorageUrl"

    const-string v2, "http://qzs.qq.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/l;->m:Ljava/lang/String;

    :cond_15
    iget-object v0, p0, Lcom/tencent/open/l;->m:Ljava/lang/String;

    goto/16 :goto_0

    nop

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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
