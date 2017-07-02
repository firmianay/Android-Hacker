.class final Lcom/yiliao/android/openapis/sdk/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$4;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$4;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a;->finish()V

    return-void
.end method
