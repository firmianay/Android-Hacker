.class public Lcom/netease/nr/biz/sns/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/a/c;


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/weibo/sdk/android/a/a;

.field private d:Lcom/netease/nr/biz/sns/util/l;

.field private e:Lcom/netease/nr/biz/sns/util/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Lcom/netease/nr/biz/sns/util/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/h;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/netease/nr/biz/sns/util/h;->b:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/netease/nr/biz/sns/util/h;->d:Lcom/netease/nr/biz/sns/util/l;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/h;)Lcom/netease/nr/biz/sns/util/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->e:Lcom/netease/nr/biz/sns/util/k;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/h;Lcom/netease/nr/biz/sns/util/k;)Lcom/netease/nr/biz/sns/util/k;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/h;->e:Lcom/netease/nr/biz/sns/util/k;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "snsType"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/h;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/netease/nr/biz/sns/a/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/h;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/sns/util/h;)Lcom/netease/nr/biz/sns/util/l;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->d:Lcom/netease/nr/biz/sns/util/l;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    const-string v0, "com.weibo.sdk.android.a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "3857427664"

    sput-object v0, Lcom/weibo/sdk/android/b;->b:Ljava/lang/String;

    const-string v0, "http://m.163.com/newsapp/"

    sput-object v0, Lcom/weibo/sdk/android/b;->c:Ljava/lang/String;

    new-instance v0, Lcom/weibo/sdk/android/a/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/h;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/h;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1, v2, p0}, Lcom/weibo/sdk/android/a/a;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Lcom/weibo/sdk/android/a/c;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->c:Lcom/weibo/sdk/android/a/a;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->c:Lcom/weibo/sdk/android/a/a;

    new-instance v1, Lcom/netease/nr/biz/sns/util/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/sns/util/j;-><init>(Lcom/netease/nr/biz/sns/util/h;Lcom/netease/nr/biz/sns/util/i;)V

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/a/a;->a(Lcom/weibo/sdk/android/c;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "sina"

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/sns/util/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->c:Lcom/weibo/sdk/android/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/h;->c:Lcom/weibo/sdk/android/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/a/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "sina"

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/sns/util/h;->a(Ljava/lang/String;)V

    return-void
.end method
