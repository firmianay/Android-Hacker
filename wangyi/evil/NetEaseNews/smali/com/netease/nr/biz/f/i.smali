.class Lcom/netease/nr/biz/f/i;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/f/e;

.field private b:Landroid/widget/CompoundButton;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/f/e;Landroid/widget/CompoundButton;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/f/i;->a:Lcom/netease/nr/biz/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/f/i;->b:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/netease/nr/biz/f/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/nr/biz/f/i;->a()V

    invoke-direct {p0, p4}, Lcom/netease/nr/biz/f/i;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/f/i;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/f/i;->b:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/f/i;->b:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/netease/nr/biz/f/j;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/f/j;-><init>(Lcom/netease/nr/biz/f/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/f/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/f/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/f/i;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/biz/f/i;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v1}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/f/i;->c:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/f/i;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/f/i;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
