.class public Lcom/netease/nr/biz/plugin/c/m;
.super Lcom/netease/nr/base/fragment/d;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static f:Ljava/util/List;


# instance fields
.field private e:Ljava/util/List;

.field private g:Lcom/netease/nr/biz/plugin/c/a;

.field private h:Lcom/netease/nr/biz/plugin/c/j;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:Landroid/widget/PopupWindow;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Lcom/netease/nr/biz/plugin/c/z;

.field private x:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

.field private y:Landroid/os/Handler;

.field private z:Landroid/widget/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x1a

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/netease/nr/biz/plugin/c/m;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/netease/nr/biz/plugin/c/m;->a:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/nr/biz/plugin/c/m;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/plugin/c/m;->n:I

    new-instance v0, Lcom/netease/nr/biz/plugin/c/n;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/plugin/c/n;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->x:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/netease/nr/biz/plugin/c/x;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/plugin/c/x;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->y:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/biz/plugin/c/o;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/plugin/c/o;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->z:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/c/m;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/plugin/c/m;->n:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/c/m;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/plugin/c/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->t:Landroid/view/View;

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->v:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->i:Landroid/widget/ListView;

    const v0, 0x7f0c01ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/p;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/p;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0c00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->h:Lcom/netease/nr/biz/plugin/c/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/r;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/r;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/s;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/s;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->g:Lcom/netease/nr/biz/plugin/c/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/t;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/t;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/u;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/u;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->u:Landroid/view/View;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/v;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/v;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->l:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/c/m;->k()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/c/m;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/biz/plugin/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/c/m;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/plugin/c/m;->a([Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/m;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->p:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/netease/nr/biz/plugin/c/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "CHANGE_CITY"

    const-string v2, "\u5207\u6362\u57ce\u5e02"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private a([Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/m;->q:[Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->y:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->u:Landroid/view/View;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/netease/nr/biz/plugin/c/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    sget-object v0, Lcom/netease/nr/biz/plugin/c/m;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "city"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method static synthetic c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->g:Lcom/netease/nr/biz/plugin/c/a;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/plugin/c/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/netease/nr/biz/plugin/c/m;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/nr/biz/plugin/c/m;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->h:Lcom/netease/nr/biz/plugin/c/j;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->v:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v1, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ipquery"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->g:Lcom/netease/nr/biz/plugin/c/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/a;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->q:[Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->w:Lcom/netease/nr/biz/plugin/c/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->w:Lcom/netease/nr/biz/plugin/c/z;

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/plugin/c/z;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/plugin/c/z;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/m;->q:[Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/netease/nr/biz/plugin/c/z;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/plugin/c/m;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->w:Lcom/netease/nr/biz/plugin/c/z;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->w:Lcom/netease/nr/biz/plugin/c/z;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private k()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x2

    const-string v0, "#"

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/netease/nr/biz/plugin/c/m;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/netease/nr/biz/plugin/c/m;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/plugin/c/m;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03009f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c01e4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->m:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v2, v4, v4, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/netease/nr/biz/plugin/c/w;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/c/w;-><init>(Lcom/netease/nr/biz/plugin/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic k(Lcom/netease/nr/biz/plugin/c/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/c/m;->j()V

    return-void
.end method

.method static synthetic l(Lcom/netease/nr/biz/plugin/c/m;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->x:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/nr/biz/plugin/c/m;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/plugin/c/m;->n:I

    return v0
.end method

.method static synthetic n(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic o(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 3

    const v2, 0x7f020036

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f0c01ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    const v0, 0x7f0c001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x102000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    const v0, 0x7f0c00fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    return-void
.end method

.method public a_()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->q:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300a6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->s:Landroid/view/View;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->g:Lcom/netease/nr/biz/plugin/c/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/c/m;->x:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->o:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->p:Ljava/lang/String;

    new-instance v0, Lcom/netease/nr/biz/plugin/c/j;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/m;->z:Landroid/widget/Filter;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/plugin/c/j;-><init>(Landroid/content/Context;Landroid/widget/Filter;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->h:Lcom/netease/nr/biz/plugin/c/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/m;->e:Ljava/util/List;

    const v2, 0x7f0b00b9

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/plugin/c/m;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/util/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/netease/util/e/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/nr/biz/plugin/c/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/m;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/plugin/c/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->g:Lcom/netease/nr/biz/plugin/c/a;

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/c/m;->j()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->w:Lcom/netease/nr/biz/plugin/c/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->w:Lcom/netease/nr/biz/plugin/c/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/c/z;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->s:Landroid/view/View;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->t:Landroid/view/View;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->u:Landroid/view/View;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/m;->v:Landroid/view/View;

    return-void
.end method
