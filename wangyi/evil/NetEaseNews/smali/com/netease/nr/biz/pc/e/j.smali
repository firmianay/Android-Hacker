.class public Lcom/netease/nr/biz/pc/e/j;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Lcom/netease/nr/base/fragment/b;


# instance fields
.field private a:Lcom/netease/nr/biz/pc/e/l;

.field private e:Landroid/app/ProgressDialog;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/e/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->j()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->a:Lcom/netease/nr/biz/pc/e/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->a:Lcom/netease/nr/biz/pc/e/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/e/l;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/netease/nr/biz/pc/e/l;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pc/e/l;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/e/j;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/k;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->a:Lcom/netease/nr/biz/pc/e/l;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/j;->a:Lcom/netease/nr/biz/pc/e/l;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->j()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0171

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/pc/e/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u672a\u5b8c\u6210"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pc/e/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0c0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@163.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Lcom/netease/nr/base/fragment/a;

    invoke-direct {v2}, Lcom/netease/nr/base/fragment/a;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    const v5, 0x7f0b0184

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/pc/e/j;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0b0185

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/pc/e/j;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n\u63a8\u8350\u4eba:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "callback_tag"

    const-string v5, "confirm_submit"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "old"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "custom_param"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/netease/nr/base/fragment/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {v2, v3}, Lcom/netease/nr/base/fragment/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/nr/base/fragment/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method private j()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->a:Lcom/netease/nr/biz/pc/e/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->a:Lcom/netease/nr/biz/pc/e/l;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/e/l;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const v4, 0x7f0b0014

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/pc/e/j;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private k()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u672a\u5b8c\u6210"

    goto :goto_0
.end method

.method private l()V
    .locals 9

    const v8, 0x7f070053

    const v7, 0x7f070051

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->C()Lcom/netease/util/j/a;

    move-result-object v3

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0c018e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c018f

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0190

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->k()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u6210\u529f"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\u5931\u8d25"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const v5, 0x7f0201e8

    invoke-virtual {v3, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {v3, v0, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v1, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v2, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_3
    const-string v6, "\u5ba1\u6838\u4e2d"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0201e7

    invoke-virtual {v3, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {v3, v0, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v1, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v2, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_4
    const v5, 0x7f0201e6

    invoke-virtual {v3, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {v3, v0, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v1, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v2, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/fragment/a;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/netease/nr/base/fragment/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "confirm_submit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/netease/nr/base/fragment/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "custom_param"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    const-string v1, "old"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_0

    const-string v0, "device_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/pc/e/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0c0072

    const v2, 0x7f07003d

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f020173

    invoke-virtual {p1, p2, v0}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v0, 0x7f0c0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c0191

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0201e5

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c0192

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u5b8c\u6210"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0182

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pc/e/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->l()V

    return-void

    :cond_1
    const-string v0, "a60d0d"

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v1, "300"

    const-string v3, "<font color=\'#a60d0d\'>300</font>"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    const-string v3, "<font color=\'#a60d0d\'>200</font>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a_(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netease/nr/base/fragment/a;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->u()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u5b8c\u6210"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/util/e/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->f:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->e:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/e/j;->k()Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0c018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c018e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c018f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0c0190

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0186

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "\u5931\u8d25"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0188

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0192

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c0191

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    const-string v6, "\u672a\u5b8c\u6210"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    if-eqz v5, :cond_0

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f0b0187

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->f:Ljava/util/Map;

    const-string v1, "msg"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/j;->f:Ljava/util/Map;

    const-string v1, "user"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method
