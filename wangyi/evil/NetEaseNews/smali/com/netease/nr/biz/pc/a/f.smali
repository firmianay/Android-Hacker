.class public Lcom/netease/nr/biz/pc/a/f;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Lcom/netease/nr/biz/pc/a/p;


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/app/ProgressDialog;

.field private h:I

.field private i:I

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/inputmethod/InputMethodManager;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/TextView;

.field private n:[Ljava/lang/String;

.field private o:Lcom/netease/nr/biz/pc/a/a;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/netease/nr/biz/pc/a/m;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    iput v0, p0, Lcom/netease/nr/biz/pc/a/f;->h:I

    iput v0, p0, Lcom/netease/nr/biz/pc/a/f;->i:I

    new-instance v0, Lcom/netease/nr/biz/pc/a/k;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/a/k;-><init>(Lcom/netease/nr/biz/pc/a/f;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->r:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netease/nr/biz/pc/a/l;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/a/l;-><init>(Lcom/netease/nr/biz/pc/a/f;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->s:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/a/f;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/pc/a/f;->h:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->o:Lcom/netease/nr/biz/pc/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/a/f;Lcom/netease/nr/biz/pc/a/a;)Lcom/netease/nr/biz/pc/a/a;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/f;->o:Lcom/netease/nr/biz/pc/a/a;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->k:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0c0035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0c0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->e:Landroid/widget/EditText;

    const v0, 0x7f0c003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->f:Landroid/widget/Button;

    const v0, 0x7f0c003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->j:Landroid/widget/Button;

    const v0, 0x7f0c0037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->l:Landroid/widget/CheckBox;

    const v0, 0x7f0c0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->k:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/a/f;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pc/a/f;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-static {p1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v1, "account"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cookie"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "p_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "passport"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v1, v2, v3, v0}, Lcom/netease/nr/biz/pc/a/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Z)V

    new-instance v0, Lcom/netease/nr/biz/pc/sync/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/pc/sync/b;-><init>(Landroid/content/Context;)V

    new-array v1, v6, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/sync/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "enter_login"

    const-string v2, "enter_login"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/netease/util/e/c;->b(Ljava/util/Map;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b011b

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/a/f;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/pc/a/f;->i:I

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/a/f;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/pc/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/a/f;->e()V

    return-void
.end method

.method static synthetic d(Lcom/netease/nr/biz/pc/a/f;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->n:[Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/pc/a/f;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/pc/a/f;->i:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/netease/nr/biz/pc/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/a/f;->j()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/a/f;->e()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/nr/biz/pc/a/g;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/a/g;-><init>(Lcom/netease/nr/biz/pc/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/nr/biz/pc/a/h;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/a/h;-><init>(Lcom/netease/nr/biz/pc/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/nr/biz/pc/a/i;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/a/i;-><init>(Lcom/netease/nr/biz/pc/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/nr/biz/pc/a/j;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/a/j;-><init>(Lcom/netease/nr/biz/pc/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@163.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/f;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ssl"

    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/f;->l:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->q:Lcom/netease/nr/biz/pc/a/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->q:Lcom/netease/nr/biz/pc/a/m;

    invoke-virtual {v1, v4}, Lcom/netease/nr/biz/pc/a/m;->cancel(Z)Z

    :cond_1
    new-instance v1, Lcom/netease/nr/biz/pc/a/m;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/netease/nr/biz/pc/a/m;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/netease/nr/biz/pc/a/f;)V

    iput-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->q:Lcom/netease/nr/biz/pc/a/m;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->q:Lcom/netease/nr/biz/pc/a/m;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 10

    const v9, 0x7f0c003a

    const v8, 0x7f0c0036

    const v7, 0x7f0c0035

    const v6, 0x7f070116

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f0c0032

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f02017c

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/EditText;IIII)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f020181

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/EditText;IIII)V

    const v0, 0x7f0c003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020179

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02017f

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070118

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070114

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->l:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02016e

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    const v1, 0x7f0700e4

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    const v1, 0x7f02029e

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/a/f;->h:I

    :cond_0
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pc/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->u()V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->a(Lcom/netease/nr/biz/pc/a/p;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->b(Lcom/netease/nr/biz/pc/a/p;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->q:Lcom/netease/nr/biz/pc/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->q:Lcom/netease/nr/biz/pc/a/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/a/m;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f060012

    const v4, 0x7f060011

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pc/a/f;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/a/f;->f()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    const v0, 0x7f0c0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "params_login_from_suffix"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->n:[Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->n:[Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->n:[Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/f;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
