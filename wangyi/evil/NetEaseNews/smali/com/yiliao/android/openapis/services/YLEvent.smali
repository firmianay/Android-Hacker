.class public final Lcom/yiliao/android/openapis/services/YLEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/Object;

.field public code:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yiliao/android/openapis/services/YLEvent$1;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/services/YLEvent$1;-><init>()V

    sput-object v0, Lcom/yiliao/android/openapis/services/YLEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yiliao/android/openapis/services/YLEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yiliao/android/openapis/services/YLEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yiliao/android/openapis/services/YLEvent;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/yiliao/android/openapis/services/YLEvent;->type:I

    iput p3, p0, Lcom/yiliao/android/openapis/services/YLEvent;->code:I

    return-void
.end method

.method public static getErrorDesc(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "unknown error"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "app_not_register"

    goto :goto_0

    :sswitch_1
    const-string v0, "app_time_invalid"

    goto :goto_0

    :sswitch_2
    const-string v0, "user_unlogged"

    goto :goto_0

    :sswitch_3
    const-string v0, "version_not_supported"

    goto :goto_0

    :sswitch_4
    const-string v0, "send_form_error"

    goto :goto_0

    :sswitch_5
    const-string v0, "service timeout"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_4
        0x2af9 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->type:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->a:Ljava/lang/Object;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/services/YLEvent;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
