.class Lcom/netease/nr/biz/polymeric/j;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/polymeric/f;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/polymeric/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/j;->a:Lcom/netease/nr/biz/polymeric/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/polymeric/f;Lcom/netease/nr/biz/polymeric/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/polymeric/j;-><init>(Lcom/netease/nr/biz/polymeric/f;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/polymeric/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/j;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/polymeric/j;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/j;->b:Landroid/widget/TextView;

    return-object p1
.end method
