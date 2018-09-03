.class final Lcom/yifengcom/yfpos/service/DeviceModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yifengcom/yfpos/service/DeviceModel;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yifengcom/yfpos/service/DeviceModel;
    .locals 1

    new-instance v0, Lcom/yifengcom/yfpos/service/DeviceModel;

    invoke-direct {v0, p1}, Lcom/yifengcom/yfpos/service/DeviceModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yifengcom/yfpos/service/DeviceModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yifengcom/yfpos/service/DeviceModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yifengcom/yfpos/service/DeviceModel;
    .locals 1

    new-array v0, p1, [Lcom/yifengcom/yfpos/service/DeviceModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yifengcom/yfpos/service/DeviceModel$1;->newArray(I)[Lcom/yifengcom/yfpos/service/DeviceModel;

    move-result-object v0

    return-object v0
.end method
