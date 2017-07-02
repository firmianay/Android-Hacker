.class public Lcom/netease/nr/biz/plugin/b/c;
.super Lcom/netease/nr/base/fragment/d;


# static fields
.field private static f:Z


# instance fields
.field private a:Landroid/view/View;

.field private e:Lcom/netease/nr/base/view/a;

.field private final g:I

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/netease/nr/base/view/SearchListView;

.field private l:Landroid/view/inputmethod/InputMethodManager;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/netease/nr/biz/plugin/b/c;->g:I

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/plugin/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->o()V

    return-void
.end method

.method static synthetic d(Lcom/netease/nr/biz/plugin/b/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/plugin/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->l()V

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/netease/nr/biz/plugin/b/c;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->e:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->e:Lcom/netease/nr/base/view/a;

    const v1, 0x7f0b00c8

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/plugin/b/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->e:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    return-void
.end method

.method static synthetic g(Lcom/netease/nr/biz/plugin/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->p()V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    const v1, 0x7f0c01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    const v1, 0x7f0c01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    const v1, 0x7f0c00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    const v1, 0x7f0c01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/SearchListView;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->o()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->l:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->m()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/nr/biz/plugin/b/d;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/d;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/nr/biz/plugin/b/e;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/e;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->i:Landroid/widget/Button;

    new-instance v1, Lcom/netease/nr/biz/plugin/b/f;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/f;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    const v1, 0x7f0c01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/nr/biz/plugin/b/g;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/g;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->d()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/plugin/b/h;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/h;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->e()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/plugin/b/i;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/i;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/nr/biz/plugin/b/j;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/j;-><init>(Lcom/netease/nr/biz/plugin/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->n()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00cb

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/plugin/b/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/nr/biz/plugin/b/c;->f:Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->a()V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->l:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->l:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->l:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->l:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    const-string v0, "search_history_word_tag_file"

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/b/l;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/netease/nr/biz/plugin/b/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/plugin/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/SearchListView;->a(Landroid/widget/BaseAdapter;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->m()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/plugin/b/k;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/b/c;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/plugin/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 4

    const v3, 0x7f020036

    const v2, 0x7f020030

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f0c01d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    const v0, 0x7f0c01d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020237

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v0, 0x7f0c001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c01d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0700f1

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/EditText;I)V

    const v0, 0x7f0c01dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/SearchListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->d()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->e()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->b(Landroid/widget/ListView;I)V

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->b(Landroid/widget/ListView;I)V

    invoke-virtual {p1, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x42

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->l()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03009a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 6

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->m:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-boolean v2, Lcom/netease/nr/biz/plugin/b/c;->f:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/netease/nr/biz/plugin/b/m;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/plugin/b/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/SearchListView;->b(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/SearchListView;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    move v2, v1

    :cond_2
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v5, "title"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/netease/nr/biz/plugin/b/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/netease/nr/biz/plugin/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/SearchListView;->a(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->o()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/SearchListView;->c()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->z()V

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->f()V

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->j()V

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/b/c;->k()V

    return-void
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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/plugin/b/c;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->u()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/b/c;->A()V

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/c;->k:Lcom/netease/nr/base/view/SearchListView;

    return-void
.end method
