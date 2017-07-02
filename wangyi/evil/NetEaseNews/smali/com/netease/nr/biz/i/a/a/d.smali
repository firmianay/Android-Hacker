.class public Lcom/netease/nr/biz/i/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private a:Lcom/netease/util/fragment/FragmentActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Z

.field private h:Lcom/netease/nr/biz/i/a/a/h;

.field private i:Lcom/netease/nr/biz/i/a/a/e;

.field private j:Lcom/netease/nr/biz/i/a/a/g;


# direct methods
.method public constructor <init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/i/a/a/e;

    invoke-direct {v0}, Lcom/netease/nr/biz/i/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    const v1, 0x7f0c0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    const v1, 0x7f0c0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    const v1, 0x7f0c0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/i/a/a/d;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/i/a/a/d;Lcom/netease/nr/biz/i/a/a/h;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/nr/biz/i/a/a/h;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/netease/nr/biz/i/a/a/h;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->h:Lcom/netease/nr/biz/i/a/a/h;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    const-class v1, Lcom/netease/nr/biz/i/a/a/f;

    invoke-static {v0, v1}, Lcom/netease/nr/base/fragment/c;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/h;->a(Lcom/netease/nr/biz/i/a/a/h;)Lcom/netease/nr/biz/i/a/a/e;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/e;->b(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->a()V

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/e;->c(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/e;->d(Lcom/netease/nr/biz/i/a/a/e;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/netease/nr/biz/i/a/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v0, :cond_3

    const v0, 0x7f0b0138

    :goto_1
    invoke-static {v1, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const v0, 0x7f0b0137

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v0, :cond_5

    const v0, 0x7f0b013a

    :goto_3
    invoke-static {v1, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_2

    :cond_5
    const v0, 0x7f0b0139

    goto :goto_3
.end method

.method private c(Z)V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v1}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    const v1, 0x7f0b0010

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nr/biz/i/a/a/e;->c(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-virtual {v1}, Lcom/netease/nr/biz/i/a/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    const v1, 0x7f0b013c

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v4, v0

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v1, v0}, Lcom/netease/util/fragment/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/netease/nr/biz/i/a/a/e;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-direct {v2, v0}, Lcom/netease/nr/biz/i/a/a/e;-><init>(Lcom/netease/nr/biz/i/a/a/e;)V

    invoke-static {v2, v1}, Lcom/netease/nr/biz/i/a/a/e;->d(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/nr/biz/i/a/a/e;->b(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/netease/nr/biz/i/a/a/h;

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v1, v3, p0, v2}, Lcom/netease/nr/biz/i/a/a/h;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/i/a/a/d;Lcom/netease/nr/biz/i/a/a/e;)V

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->h:Lcom/netease/nr/biz/i/a/a/h;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/d;->h:Lcom/netease/nr/biz/i/a/a/h;

    invoke-interface {v1, v2}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/netease/nr/biz/i/a/a/f;

    invoke-direct {v1}, Lcom/netease/nr/biz/i/a/a/f;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/d;->h:Lcom/netease/nr/biz/i/a/a/h;

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/i/a/a/f;->a(Lcom/netease/nr/biz/i/a/a/h;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "reply"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/i/a/a/f;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/netease/nr/biz/i/a/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/d;->j:Lcom/netease/nr/biz/i/a/a/g;

    return-void
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 7

    const v2, 0x7f070078

    const v6, 0x7f020023

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    const v1, 0x7f0202be

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0202c1

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    invoke-virtual {p1, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->j:Lcom/netease/nr/biz/i/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->j:Lcom/netease/nr/biz/i/a/a/g;

    invoke-interface {v0, p1}, Lcom/netease/nr/biz/i/a/a/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->f:Z

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/i/a/a/d;->c(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v0, p1}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/i/a/a/e;->b(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v3, v0}, Lcom/netease/nr/biz/i/a/a/e;->e(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v3, v0}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;Ljava/util/Map;)Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_0
    const-string v3, "p"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v3, v0}, Lcom/netease/nr/biz/i/a/a/e;->e(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v0, p1}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/i/a/a/d;->b(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/netease/util/fragment/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->g:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->g:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a/d;->b(Z)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/netease/nr/biz/i/a/a/d;->f()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0200 -> :sswitch_0
        0x7f0c0267 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->i:Lcom/netease/nr/biz/i/a/a/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/i/a/a/e;->e(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/a/d;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->a:Lcom/netease/util/fragment/FragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/d;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->f:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a/d;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
