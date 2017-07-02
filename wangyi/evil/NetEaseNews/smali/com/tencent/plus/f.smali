.class Lcom/tencent/plus/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/f;->c:Lcom/tencent/plus/ImageActivity;

    iput-object p2, p0, Lcom/tencent/plus/f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/plus/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/plus/f;->c:Lcom/tencent/plus/ImageActivity;

    iget-object v1, p0, Lcom/tencent/plus/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/plus/f;->b:I

    invoke-static {v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    return-void
.end method
