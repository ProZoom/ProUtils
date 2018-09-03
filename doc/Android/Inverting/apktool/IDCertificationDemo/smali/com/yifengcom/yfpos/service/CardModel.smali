.class public Lcom/yifengcom/yfpos/service/CardModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private batchNo:Ljava/lang/String;

.field private encryTrack2:Ljava/lang/String;

.field private encryTrack2Len:I

.field private encryTrack3:Ljava/lang/String;

.field private encryTrack3Len:I

.field private expireDate:Ljava/lang/String;

.field private icData:Ljava/lang/String;

.field private icSeq:Ljava/lang/String;

.field private isIc:Z

.field private mac:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private pinBlock:Ljava/lang/String;

.field private random:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private track2:Ljava/lang/String;

.field private track2Len:I

.field private track3:Ljava/lang/String;

.field private track3Len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yifengcom/yfpos/service/CardModel$1;

    invoke-direct {v0}, Lcom/yifengcom/yfpos/service/CardModel$1;-><init>()V

    sput-object v0, Lcom/yifengcom/yfpos/service/CardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yifengcom/yfpos/service/CardModel;->readFromParcel(Landroid/os/Parcel;)V

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

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->batchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryTrack2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryTrack2Len()I
    .locals 1

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2Len:I

    return v0
.end method

.method public getEncryTrack3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryTrack3Len()I
    .locals 1

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3Len:I

    return v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIcData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->icData:Ljava/lang/String;

    return-object v0
.end method

.method public getIcSeq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->icSeq:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getPan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public getPinBlock()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->pinBlock:Ljava/lang/String;

    return-object v0
.end method

.method public getRandom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->random:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack2Len()I
    .locals 1

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2Len:I

    return v0
.end method

.method public getTrack3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack3Len()I
    .locals 1

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3Len:I

    return v0
.end method

.method public isIc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->isIc:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->pan:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->expireDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->isIc:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2Len:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3Len:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2Len:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3Len:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->icData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->icSeq:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->random:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->pinBlock:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->serialNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->batchNo:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBatchNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->batchNo:Ljava/lang/String;

    return-void
.end method

.method public setEncryTrack2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2:Ljava/lang/String;

    return-void
.end method

.method public setEncryTrack2Len(I)V
    .locals 0

    iput p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2Len:I

    return-void
.end method

.method public setEncryTrack3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3:Ljava/lang/String;

    return-void
.end method

.method public setEncryTrack3Len(I)V
    .locals 0

    iput p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3Len:I

    return-void
.end method

.method public setExpireDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->expireDate:Ljava/lang/String;

    return-void
.end method

.method public setIc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->isIc:Z

    return-void
.end method

.method public setIcData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->icData:Ljava/lang/String;

    return-void
.end method

.method public setIcSeq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->icSeq:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->mac:Ljava/lang/String;

    return-void
.end method

.method public setPan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->pan:Ljava/lang/String;

    return-void
.end method

.method public setPinBlock(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->pinBlock:Ljava/lang/String;

    return-void
.end method

.method public setRandom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->random:Ljava/lang/String;

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->serialNo:Ljava/lang/String;

    return-void
.end method

.method public setTrack2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2:Ljava/lang/String;

    return-void
.end method

.method public setTrack2Len(I)V
    .locals 0

    iput p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2Len:I

    return-void
.end method

.method public setTrack3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3:Ljava/lang/String;

    return-void
.end method

.method public setTrack3Len(I)V
    .locals 0

    iput p1, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3Len:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->pan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->expireDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->isIc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2Len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3Len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->encryTrack3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2Len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3Len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->track3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->icData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->icSeq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->random:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->pinBlock:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->serialNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/CardModel;->batchNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
