.class final Lcom/netease/nr/base/view/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;
    .locals 2

    new-instance v0, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;-><init>(Landroid/os/Parcel;Lcom/netease/nr/base/view/at;)V

    return-object v0
.end method

.method public a(I)[Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/av;->a(Landroid/os/Parcel;)Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/av;->a(I)[Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;

    move-result-object v0

    return-object v0
.end method
