.class public Lcom/netease/nr/biz/plugin/plugin/MailPlugin;
.super Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

# interfaces
.implements Lcom/netease/nr/biz/pc/a/o;


# instance fields
.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/netease/nr/biz/plugin/plugin/b;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->m:Z

    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->p:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/a;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/plugin/plugin/a;-><init>(Lcom/netease/nr/biz/plugin/plugin/MailPlugin;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->q:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7f020425

    const/4 v5, 0x0

    iput p1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->n:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/netease/util/fragment/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->p:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const v2, 0x7f0b0122

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput-boolean v5, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->n:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/plugin/MailPlugin;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->a(I)V

    return-void
.end method

.method private v()V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NTES_SESS=;"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/netease/nr/biz/plugin/plugin/b;->cancel(Z)Z

    :cond_0
    new-instance v3, Lcom/netease/nr/biz/plugin/plugin/b;

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/netease/nr/biz/plugin/plugin/b;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/plugin/plugin/MailPlugin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f020217

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/widget/FrameLayout;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030080

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)Z
    .locals 11

    const v10, 0x7f07002f

    const/16 v9, 0xa

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->H()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v6

    const v0, 0x7f0c001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0081

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x7f0c00ca

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->n()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v6, v8}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->s()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    if-lt v1, v9, :cond_3

    :cond_2
    const v1, 0x7f020028

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    move v1, v5

    :goto_1
    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v7, v2, v10}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v7, v0, v10}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v3, v5

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    if-ge v1, v9, :cond_5

    const v1, 0x7f0b0120

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0201ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move v1, v5

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method public a_(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/plugin/plugin/b;->cancel(Z)Z

    :cond_0
    iput v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->J()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->m:Z

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->v()V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->m:Z

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f020227

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b022e

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d()V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->a(Lcom/netease/nr/biz/pc/a/o;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->e()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/b;->cancel(Z)Z

    :cond_0
    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->b(Lcom/netease/nr/biz/pc/a/o;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 11

    const v10, 0x7f060012

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v0, 0x7f0b0121

    invoke-static {v1, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->m:Z

    iput v9, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    iget-object v4, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    invoke-virtual {v4, v7}, Lcom/netease/nr/biz/plugin/plugin/b;->cancel(Z)Z

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v4

    const-string v7, "UC"

    const-string v8, "\u90ae\u4ef6"

    invoke-static {v4, v7, v8}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "param_url"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "param_cookie"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param_pinfo_cookie"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param_passport_cookie"

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param_user_agent"

    const-string v3, "netease_news_android"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param_login_cookie"

    const-string v3, "##login_cookie##"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "params_login_from_suffix"

    invoke-virtual {v4, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v2, Lcom/netease/nr/biz/plugin/a/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mail_WebFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "cm"

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v2, "params_login_from_suffix"

    invoke-virtual {v6, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    const-string v3, "PersonCenterMainFragment"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AccountLoginFragment"

    const-class v8, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v3, v1

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->h()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->m:Z

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->v()V

    :cond_0
    return-void
.end method

.method public m_()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->o:Lcom/netease/nr/biz/plugin/plugin/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/b;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->l:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
