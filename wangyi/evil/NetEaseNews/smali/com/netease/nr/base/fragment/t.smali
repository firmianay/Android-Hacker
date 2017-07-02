.class public Lcom/netease/nr/base/fragment/t;
.super Lcom/netease/nr/base/fragment/d;


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View;

.field private i:Landroid/webkit/CookieManager;

.field private j:Ljava/lang/String;

.field private k:Landroid/webkit/WebView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Z

.field private n:Z

.field private o:Landroid/webkit/WebViewClient;

.field private p:Z

.field private final q:Landroid/os/Handler;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->q:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/base/fragment/u;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/u;-><init>(Lcom/netease/nr/base/fragment/t;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/t;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/t;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/fragment/t;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/base/fragment/t;->a(ZZZ)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 6

    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->m:Z

    if-eq v0, p1, :cond_0

    :cond_2
    iput-boolean p1, p0, Lcom/netease/nr/base/fragment/t;->m:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/t;->b(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearAnimation()V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearAnimation()V

    goto :goto_2
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "about:blank"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/netease/nr/base/fragment/t;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/base/fragment/t;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->n()V

    goto :goto_0

    :cond_2
    const-string v2, "close://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message/rfc822"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.CC"

    invoke-virtual {v1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/netease/nr/base/fragment/t;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/netease/nr/base/c/z;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/t;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/fragment/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/t;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/fragment/t;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/base/fragment/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/nr/base/fragment/t;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/fragment/t;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/nr/base/fragment/t;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/base/fragment/t;)Landroid/webkit/CookieManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/base/fragment/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->n:Z

    return v0
.end method


# virtual methods
.method final a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0c002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x7f0c002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/nr/base/fragment/v;

    invoke-direct {v1, p0}, Lcom/netease/nr/base/fragment/v;-><init>(Lcom/netease/nr/base/fragment/t;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/t;->a(Landroid/webkit/WebView;)V

    invoke-direct {p0, v2, v2, v3}, Lcom/netease/nr/base/fragment/t;->a(ZZZ)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method protected a(Landroid/webkit/WebView;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    const-string v1, "80"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "param_user_agent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->e_()Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->k()Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_4
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->j()Landroid/webkit/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    :cond_0
    const v0, 0xff0002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/t;->b(Lcom/netease/util/j/a;Landroid/view/View;)V

    :cond_1
    const v0, 0x1020004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/t;->c(Lcom/netease/util/j/a;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/fragment/t;->a(ZZ)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/nr/base/fragment/t;->m:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/nr/base/fragment/t;->p:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/netease/nr/base/fragment/t;->p:Z

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/t;->b(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)V
    .locals 2

    const/16 v1, 0x8

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->l:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0c001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method protected b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "param_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/t;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x1020004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :try_start_0
    const-string v0, "http://"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "param_cookie"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "param_pinfo_cookie"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "param_passport_cookie"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    iget-object v4, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    iget-object v3, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->e:Ljava/lang/String;

    const-string v2, "##login_cookie##"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    iget-object v2, p0, Lcom/netease/nr/base/fragment/t;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/netease/nr/base/fragment/t;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5
.end method

.method protected e_()Landroid/webkit/WebViewClient;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->m()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method protected j()Landroid/webkit/DownloadListener;
    .locals 1

    new-instance v0, Lcom/netease/nr/base/fragment/w;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/w;-><init>(Lcom/netease/nr/base/fragment/t;)V

    return-object v0
.end method

.method protected k()Landroid/webkit/WebChromeClient;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->l()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method protected l()Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/netease/nr/base/fragment/x;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/x;-><init>(Lcom/netease/nr/base/fragment/t;)V

    return-object v0
.end method

.method protected m()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->o:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/fragment/y;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/y;-><init>(Lcom/netease/nr/base/fragment/t;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->o:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->o:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public final n()V
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->f:Z

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "params_login_from_suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params_login_from_suffix"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/t;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_2
    move-object v4, v5

    goto :goto_0
.end method

.method public o()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "param_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/fragment/t;->e(Ljava/lang/String;)V

    :cond_0
    const-string v1, "param_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->d(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->f:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "param_login_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/base/fragment/t;->a:Ljava/lang/String;

    const-string v1, "param_login_cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/t;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->A()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/netease/nr/base/fragment/t;->h:Landroid/view/View;

    iput-object v2, p0, Lcom/netease/nr/base/fragment/t;->k:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/netease/nr/base/fragment/t;->i:Landroid/webkit/CookieManager;

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->f:Z

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NTES_SESS=;"

    iget-object v2, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b011c

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netease/nr/base/fragment/t;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/t;->f:Z

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/t;->b(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/t;->b(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/t;->b(Z)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/fragment/t;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/t;->z()V

    return-void
.end method

.method public p()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/t;->q:Landroid/os/Handler;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
