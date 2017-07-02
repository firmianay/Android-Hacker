.class public Lcom/netease/nr/base/fragment/BaseWebFragment;
.super Lcom/netease/nr/base/fragment/t;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/c/m;
.implements Lcom/netease/nr/base/c/x;
.implements Lcom/netease/nr/biz/i/a/a/g;
.implements Lcom/netease/nr/biz/pc/a/o;
.implements Lcom/netease/nr/biz/sns/a/d/b;
.implements Lcom/netease/nr/biz/sns/util/g;


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/netease/nr/biz/i/a/a/d;

.field private l:Lcom/netease/nr/base/c/v;

.field private m:Lcom/netease/nr/base/c/j;

.field private n:Z

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/t;-><init>()V

    new-instance v0, Lcom/netease/nr/base/fragment/r;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/r;-><init>(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->o:Ljava/lang/Runnable;

    return-void
.end method

.method private D()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "UC"

    const-string v2, "\u79ef\u5206\u8be6\u60c5"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/v;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyPorfileFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private E()V
    .locals 7

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v6

    new-instance v0, Lcom/netease/nr/biz/pc/main/r;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pc/main/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/main/s;ZZ)V

    invoke-interface {v6, v0}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private F()V
    .locals 7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_refresh"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/b/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FontListFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private G()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->g:Ljava/lang/String;

    const-string v1, "javascript:(function(){shareText=\'\';shareImg=\'\';ele=document.getElementById(\'__newsapp_sharetext\');if(ele){shareText=ele.innerHTML;}ele=document.getElementById(\'__newsapp_sharephotourl\');if(ele){shareImg=ele.innerHTML;}if (window.extra){window.extra._newsapp_show_snsselectfragment(shareText, shareImg);}})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private H()V
    .locals 7

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v2}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "yixin"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "yixin_timeline"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "weixin"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "weixin_timeline"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "netease"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "sina"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "qq"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "renren"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "qzone"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "qqfriends"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sns_types"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/sns/a/d/a;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/netease/nr/biz/sns/a/d/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    move-object v0, v1

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    goto :goto_0
.end method

.method private J()V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/util/i/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"id\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"m\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"mid\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {p0, v4}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"n\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"o\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"u\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/netease/util/i/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\",\"v\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:(function(){window.__newsapp_device_done("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private K()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private L()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{name:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:(function(){__newsapp_userinfo_done("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "})()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/BaseWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "huatian://profile/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "com.netease.huatian"

    invoke-static {v2, v3}, Lcom/netease/nr/biz/pc/d/e;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.netease.huatian.action.VIEW_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "http://3g.163.com/links/4377"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/BaseWebFragment;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/fragment/BaseWebFragment;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/BaseWebFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/base/fragment/BaseWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/nr/base/fragment/BaseWebFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/base/fragment/BaseWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/nr/base/fragment/BaseWebFragment;)Lcom/netease/nr/biz/i/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/base/fragment/BaseWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/netease/nr/base/fragment/BaseWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->G()V

    return-void
.end method

.method static synthetic f(Lcom/netease/nr/base/fragment/BaseWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->I()V

    return-void
.end method

.method static synthetic g(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->L()V

    return-void
.end method

.method static synthetic h(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->K()V

    return-void
.end method

.method static synthetic i(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->J()V

    return-void
.end method

.method static synthetic j(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->F()V

    return-void
.end method

.method static synthetic k(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->E()V

    return-void
.end method

.method static synthetic l(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->r()V

    return-void
.end method

.method static synthetic m(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->D()V

    return-void
.end method

.method static synthetic n(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic o(Lcom/netease/nr/base/fragment/BaseWebFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->j:Z

    return v0
.end method

.method static synthetic p(Lcom/netease/nr/base/fragment/BaseWebFragment;)Lcom/netease/nr/base/c/v;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    return-object v0
.end method

.method static synthetic q(Lcom/netease/nr/base/fragment/BaseWebFragment;)Lcom/netease/nr/base/c/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->m:Lcom/netease/nr/base/c/j;

    return-object v0
.end method

.method private r()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fb_content"

    const-string v2, "#\u79ef\u5206\u5546\u57ce\u53cd\u9988#"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic r(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->H()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    const/high16 v3, 0x7f0b0000

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "share_content"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "qzone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "share_pic"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v1, "weixin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "weixin_timeline"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "yixin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "yixin_timeline"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "share_other"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v1, "qqfriends"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "share_pic"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "qqfriends"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetUrl"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p4, "http://m.163.com/newsapp/"

    :cond_7
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appName"

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site"

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(Landroid/webkit/WebView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/t;->a(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/netease/nr/base/fragment/BaseWebFragment$Js;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/BaseWebFragment$Js;-><init>(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    const-string v1, "extra"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/nr/base/c/l;)V
    .locals 4

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->n:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:__newsapp_location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v1, "{latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/netease/nr/base/c/l;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/netease/nr/base/c/l;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/util/j/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:__newsapp_comment_done(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/t;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{name:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:(function(){__newsapp_login_done("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "})()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    :cond_0
    invoke-super {p0}, Lcom/netease/nr/base/fragment/t;->c()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:__newsapp_shake()"

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    invoke-virtual {v0}, Lcom/netease/nr/base/c/v;->b()V

    :cond_1
    return-void
.end method

.method protected e_()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/netease/nr/base/fragment/s;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/s;-><init>(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    return-object v0
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "javascript:if(__newsapp_share_done)__newsapp_share_done()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public m_()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->G()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c007b -> :sswitch_0
        0x7f0c0111 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/t;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netease/nr/base/c/v;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/c/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/v;->a(Lcom/netease/nr/base/c/x;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->h()Lcom/netease/nr/base/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->m:Lcom/netease/nr/base/c/j;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->m:Lcom/netease/nr/base/c/j;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/j;->a(Lcom/netease/nr/base/c/m;)V

    invoke-static {p0}, Lcom/netease/nr/biz/sns/util/f;->a(Lcom/netease/nr/biz/sns/util/g;)V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->a(Lcom/netease/nr/biz/pc/a/o;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/t;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/v;->b(Lcom/netease/nr/base/c/x;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->l:Lcom/netease/nr/base/c/v;

    invoke-virtual {v0}, Lcom/netease/nr/base/c/v;->b()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->m:Lcom/netease/nr/base/c/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->m:Lcom/netease/nr/base/c/j;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/j;->b(Lcom/netease/nr/base/c/m;)V

    :cond_1
    invoke-static {p0}, Lcom/netease/nr/biz/sns/util/f;->b(Lcom/netease/nr/biz/sns/util/g;)V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->b(Lcom/netease/nr/biz/pc/a/o;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/t;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->p()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/t;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0c007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0c0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v2, v0, v1}, Lcom/netease/nr/biz/i/a/a/d;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/BaseWebFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/nr/biz/i/a/a/g;)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method
