.class public Lcom/yifengcom/yfpos/service/DeviceModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private batchNo:Ljava/lang/String;

.field private customerNo:Ljava/lang/String;

.field private existsMainKey:I

.field private sn:Ljava/lang/String;

.field private softVersion:Ljava/lang/String;

.field private terVersion:Ljava/lang/String;

.field private termNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yifengcom/yfpos/service/DeviceModel$1;

    invoke-direct {v0}, Lcom/yifengcom/yfpos/service/DeviceModel$1;-><init>()V

    sput-object v0, Lcom/yifengcom/yfpos/service/DeviceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->customerNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->termNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->batchNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->existsMainKey:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->sn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->terVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->softVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBatchNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->batchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->customerNo:Ljava/lang/String;

    return-object v0
.end method

.method public getExistsMainKey()I
    .locals 1

    iget v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->existsMainKey:I

    return v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->softVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->terVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTermNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->termNo:Ljava/lang/String;

    return-object v0
.end method

.method public isExistsMainKey()I
    .locals 1

    iget v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->existsMainKey:I

    return v0
.end method

.method public setBatchNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->batchNo:Ljava/lang/String;

    return-void
.end method

.method public setCustomerNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->customerNo:Ljava/lang/String;

    return-void
.end method

.method public setExistsMainKey(I)V
    .locals 0

    iput p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->existsMainKey:I

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->sn:Ljava/lang/String;

    return-void
.end method

.method public setSoftVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->softVersion:Ljava/lang/String;

    return-void
.end method

.method public setTerVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->terVersion:Ljava/lang/String;

    return-void
.end method

.method public setTermNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->termNo:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->customerNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->termNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->batchNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->existsMainKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->sn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->terVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/DeviceModel;->softVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
