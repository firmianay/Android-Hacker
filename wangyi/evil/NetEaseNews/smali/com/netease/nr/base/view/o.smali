.class public abstract Lcom/netease/nr/base/view/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/base/view/o;->a:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/o;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public abstract a(Landroid/widget/ListAdapter;I)Ljava/lang/String;
.end method
