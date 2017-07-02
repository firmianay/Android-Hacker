.class public Lcom/netease/nr/biz/fb/CreateNewFeedBack;
.super Lcom/netease/nr/base/activity/BaseActivity;

# interfaces
.implements Lcom/netease/nr/base/view/i;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Lcom/netease/nr/base/view/a;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/activity/BaseActivity;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/fb/d;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/fb/d;-><init>(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)V

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/biz/fb/r;->a(Landroid/app/Activity;)V

    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->i()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fb_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->e:Landroid/widget/Button;

    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->e:Landroid/widget/Button;

    new-instance v1, Lcom/netease/nr/biz/fb/a;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/fb/a;-><init>(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/nr/biz/fb/c;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/fb/c;-><init>(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;)V
    .locals 4

    const v3, 0x7f070063

    const v2, 0x7f020023

    invoke-super {p0, p1}, Lcom/netease/nr/base/activity/BaseActivity;->a(Lcom/netease/util/j/a;)V

    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->d:Landroid/widget/TextView;

    const v1, 0x7f070065

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->e:Landroid/widget/Button;

    const v1, 0x7f070114

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->e:Landroid/widget/Button;

    const v1, 0x7f020179

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    :cond_0
    return-void
.end method

.method public a_(II)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->finish()V

    return-void
.end method

.method public goBackClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->finish()V

    return-void
.end method

.method protected h_()V
    .locals 2

    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/view/a;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h:Lcom/netease/nr/base/view/a;

    const v1, 0x7f0b021e

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    return-void
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->n()V

    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->setContentView(I)V

    invoke-direct {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->f:Landroid/content/SharedPreferences;

    const-string v1, "feedback_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->f:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->h_()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a:Landroid/app/ProgressDialog;

    invoke-super {p0}, Lcom/netease/nr/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method
