.class public Lcom/tencent/open/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/open/m;

.field private b:I

.field private c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/tencent/open/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/k;->b:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/k;->c:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    return-void
.end method

.method private a()I
    .locals 3

    :cond_0
    iget v0, p0, Lcom/tencent/open/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/open/k;->b:I

    iget v0, p0, Lcom/tencent/open/k;->b:I

    const/16 v1, 0x1a00

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/k;->b:I

    :cond_1
    iget-object v0, p0, Lcom/tencent/open/k;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/open/k;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/af;

    iget-object v1, p0, Lcom/tencent/open/k;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/tencent/open/k;->b:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/tencent/open/af;->a:Lcom/tencent/tauth/c;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/open/af;->a:Lcom/tencent/tauth/c;

    invoke-interface {v1}, Lcom/tencent/tauth/c;->a()V

    :cond_2
    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/open/k;->b:I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v2

    :goto_0
    :try_start_0
    array-length v6, v4

    if-ge v3, v6, :cond_3

    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-le v6, v7, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    array-length v4, v4

    if-le v4, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    array-length v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v3, :cond_0

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_avatar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/tencent/plus/ImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/tencent/tauth/a;->a:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/k;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/k;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v2, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/k;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1}, Lcom/tencent/open/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v0, "action_story"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shareurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "url"

    const-string v2, "shareurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "action_pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    if-eqz v0, :cond_0

    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v2}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "hopenid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    if-eqz v0, :cond_0

    const-string v0, "appid"

    iget-object v2, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v2}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "keystr"

    iget-object v2, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v2}, Lcom/tencent/open/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "keytype"

    const-string v2, "0x80"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "platform"

    const-string v2, "androidqz"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/k;)Lcom/tencent/open/m;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ec96e9ac1149251acbb1b0c5777cae95"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/tencent/tauth/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/c;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/open/k;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/open/k;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    const-string v4, "QQ"

    iput-object v4, v3, Lcom/tencent/open/m;->a:Ljava/lang/String;

    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    if-eqz v4, :cond_0

    const-string v4, "client_id"

    iget-object v5, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v5}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "pf"

    const-string v5, "openmobile_android"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "need_pay"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/k;->a()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "key_action"

    const-string v5, "action_login"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "key_params"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    const-string v3, "key_request_code"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    new-instance v0, Lcom/tencent/open/x;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, p3, v4, v5}, Lcom/tencent/open/x;-><init>(Lcom/tencent/open/k;Lcom/tencent/tauth/c;ZZ)V

    iget-object v4, p0, Lcom/tencent/open/k;->c:Landroid/util/SparseArray;

    new-instance v5, Lcom/tencent/open/af;

    const-string v6, "action_login"

    invoke-direct {v5, p1, v6, p2, v0}, Lcom/tencent/open/af;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/c;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/open/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/j;

    move-result-object v0

    const-string v3, "Common_SSO_QzoneVersion"

    invoke-virtual {v0, v3}, Lcom/tencent/open/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    :goto_2
    if-nez v3, :cond_3

    const-string v0, "3.7"

    :cond_3
    const-string v3, "3.4"

    invoke-direct {p0, v4, v3}, Lcom/tencent/open/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    invoke-direct {p0, v4, v0}, Lcom/tencent/open/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/tencent/open/k;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    const-string v4, "qzone"

    iput-object v4, v3, Lcom/tencent/open/m;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/tencent/open/k;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    const-string v4, "QQ"

    iput-object v4, v3, Lcom/tencent/open/m;->a:Ljava/lang/String;

    :goto_3
    if-nez v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/tencent/open/k;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/tencent/open/k;->a:Lcom/tencent/open/m;

    const-string v4, "qzone"

    iput-object v4, v3, Lcom/tencent/open/m;->a:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/c;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "action_login"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/tencent/open/k;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/c;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/open/k;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v2, "action_share_qq"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "scheme"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/open/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    const-string v4, "key_action"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "key_params"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    const-string v3, "key_request_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v2, "action_pay"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/open/x;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p0, p4, v4, v5}, Lcom/tencent/open/x;-><init>(Lcom/tencent/open/k;Lcom/tencent/tauth/c;ZZ)V

    move-object p4, v2

    :cond_1
    iget-object v2, p0, Lcom/tencent/open/k;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/tencent/open/af;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/tencent/open/af;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/c;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OpenUi"

    const-string v3, "not such activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/tencent/tauth/a;->b:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/tencent/tauth/a;->a:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/k;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
