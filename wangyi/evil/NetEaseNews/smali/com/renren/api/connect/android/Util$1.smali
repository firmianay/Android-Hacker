.class Lcom/renren/api/connect/android/Util$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$oListener:Lcom/renren/api/connect/android/Util$OnOptionListener;


# direct methods
.method constructor <init>(Lcom/renren/api/connect/android/Util$OnOptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/renren/api/connect/android/Util$1;->val$oListener:Lcom/renren/api/connect/android/Util$OnOptionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Util$1;->val$oListener:Lcom/renren/api/connect/android/Util$OnOptionListener;

    invoke-interface {v0}, Lcom/renren/api/connect/android/Util$OnOptionListener;->onOK()V

    return-void
.end method
