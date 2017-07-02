.class public Lcom/tencent/mm/sdk/platformtools/SensorController;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:F

.field private static c:F


# instance fields
.field private b:F

.field private d:Lcom/tencent/mm/sdk/platformtools/n;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x4f800000

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->a:F

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->c:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->e:Z

    :cond_0
    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->e:Z

    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->a:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    sput v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->c:F

    :cond_1
    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->b:F

    sget v2, Lcom/tencent/mm/sdk/platformtools/SensorController;->c:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->c:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->d:Lcom/tencent/mm/sdk/platformtools/n;

    if-eqz v1, :cond_2

    const-string v1, "MicroMsg.SensorController"

    const-string v2, "sensor event false"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->d:Lcom/tencent/mm/sdk/platformtools/n;

    invoke-interface {v1, v3}, Lcom/tencent/mm/sdk/platformtools/n;->a(Z)V

    :cond_2
    :goto_1
    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->b:F

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->b:F

    sget v2, Lcom/tencent/mm/sdk/platformtools/SensorController;->c:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->c:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->d:Lcom/tencent/mm/sdk/platformtools/n;

    if-eqz v1, :cond_2

    const-string v1, "MicroMsg.SensorController"

    const-string v2, "sensor event true"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->d:Lcom/tencent/mm/sdk/platformtools/n;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/platformtools/n;->a(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
