.class public Lcom/netease/nr/biz/sns/a/c/i;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Lcom/netease/nr/biz/sns/util/l;


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/netease/nr/biz/sns/util/c;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Lcom/netease/nr/biz/sns/a/c/k;

.field private l:Lcom/netease/nr/biz/sns/util/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/a/c/i;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c023e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, p2, v0}, Lcom/netease/nr/base/c/a/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/a/c/i;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/sns/a/c/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v1

    new-instance v2, Lcom/netease/util/cache/i;

    invoke-direct {v2}, Lcom/netease/util/cache/i;-><init>()V

    const-string v0, "xxxxxx"

    iput-object v0, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iput-object p2, v2, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0c023e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/c/a/c;->b(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 6

    const v5, 0x7f0b0060

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->h:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->h:Z

    iget-boolean v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->h:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/netease/nr/biz/sns/a/c/i;->i:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3, v4}, Lcom/netease/nr/base/view/a;->a(IZ)V

    invoke-virtual {v1, v4, v3}, Lcom/netease/nr/base/view/a;->a(IZ)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/nr/biz/sns/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "nick_name"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/nr/biz/sns/util/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/netease/nr/biz/sns/a/c/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3, v3}, Lcom/netease/nr/base/view/a;->a(IZ)V

    invoke-virtual {v1, v4, v4}, Lcom/netease/nr/base/view/a;->a(IZ)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/nr/biz/sns/util/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/netease/nr/biz/sns/a/c/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 13

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0c023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b007b

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netease/nr/biz/sns/a/c/l;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/i;->g:Lcom/netease/nr/biz/sns/util/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/sns/a/c/l;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Landroid/os/Bundle;Lcom/netease/nr/biz/sns/a/c/j;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_1
    invoke-static {}, Lcom/netease/nr/biz/sns/util/f;->b()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->c()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v12}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    :cond_4
    new-instance v6, Lcom/netease/nr/biz/sns/a/c/m;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/nr/biz/sns/a/c/i;->g:Lcom/netease/nr/biz/sns/util/c;

    iget-object v9, p0, Lcom/netease/nr/biz/sns/a/c/i;->e:Ljava/lang/String;

    move-object v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/netease/nr/biz/sns/a/c/m;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/a/c/j;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private j()V
    .locals 7

    const-string v0, "sina"

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->l:Lcom/netease/nr/biz/sns/util/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/netease/nr/biz/sns/util/h;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Lcom/netease/nr/biz/sns/util/l;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->l:Lcom/netease/nr/biz/sns/util/h;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->l:Lcom/netease/nr/biz/sns/util/h;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/h;->a()V

    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "snsType"

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/sns/a/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SnsAuthFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/sns/a/c/i;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->k:Lcom/netease/nr/biz/sns/a/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->k:Lcom/netease/nr/biz/sns/a/c/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/a/c/k;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->k:Lcom/netease/nr/biz/sns/a/c/k;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f0c023f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f07000c

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020023

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a_(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/netease/nr/biz/sns/a/c/i;->f()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/netease/nr/biz/sns/a/c/i;->j()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public n_()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/a/c/i;->e()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const v1, 0x7f020296

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-virtual {v0, v7, v8, v1}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    invoke-virtual {v0, v5, v8, v1}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getView()Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c023f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0c0240

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->g:Lcom/netease/nr/biz/sns/util/c;

    invoke-virtual {v3}, Lcom/netease/nr/biz/sns/util/c;->getMsgLimit()I

    move-result v3

    iput v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    iget v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "share_www_url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    add-int/lit8 v3, v3, -0x28

    iput v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    :cond_0
    const v3, 0x7f0b0061

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#5191d2\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/netease/nr/biz/sns/a/c/i;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</FONT>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/netease/nr/biz/sns/a/c/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/netease/nr/biz/sns/a/c/j;

    invoke-direct {v3, p0, v1}, Lcom/netease/nr/biz/sns/a/c/j;-><init>(Lcom/netease/nr/biz/sns/a/c/i;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "share_content"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/netease/nr/biz/sns/a/c/i;->f:Z

    if-nez v3, :cond_5

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/netease/nr/biz/sns/a/c/i;->k()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "share_pic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0c023d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/netease/nr/biz/sns/a/c/k;

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, v8}, Lcom/netease/nr/biz/sns/a/c/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/sns/a/c/i;Lcom/netease/nr/biz/sns/a/c/j;)V

    iput-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->k:Lcom/netease/nr/biz/sns/a/c/k;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->k:Lcom/netease/nr/biz/sns/a/c/k;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/a/c/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->f:Z

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/sns/a/c/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/sns/a/c/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->l:Lcom/netease/nr/biz/sns/util/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->l:Lcom/netease/nr/biz/sns/util/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/nr/biz/sns/util/h;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->e:Ljava/lang/String;

    const-string v1, "isgroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snsType can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/c/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/d;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->g:Lcom/netease/nr/biz/sns/util/c;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->g:Lcom/netease/nr/biz/sns/util/c;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snsType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/i;->g:Lcom/netease/nr/biz/sns/util/c;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/a;->a(Lcom/netease/nr/biz/sns/util/c;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/a/c/i;->k()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/a/c/i;->e()V

    return-void
.end method
