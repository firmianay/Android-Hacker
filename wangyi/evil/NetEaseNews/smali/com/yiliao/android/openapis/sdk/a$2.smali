.class final Lcom/yiliao/android/openapis/sdk/a$2;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$2;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$2;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a$2;->a:Lcom/yiliao/android/openapis/sdk/a;

    const-string v2, "http://liao.189.cn/ecpclientdown/download.do?file=%2Fdownload%2Fmobile%2Fandroid%2FECP_android.apk&sys=android&v=4"

    invoke-static {v0, v1, v2}, Lcom/yiliao/android/openapis/sdk/a;->a(Lcom/yiliao/android/openapis/sdk/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
