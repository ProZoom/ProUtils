.class public Lcom/yifengcom/yfpos/service/WorkKey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mak:[B

.field private makCheckValue:[B

.field private makIndex:B

.field private pik:[B

.field private pikCheckValue:[B

.field private pikIndex:B

.field private tdk:[B

.field private tdkCheckValue:[B

.field private tdkIndex:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yifengcom/yfpos/service/WorkKey$1;

    invoke-direct {v0}, Lcom/yifengcom/yfpos/service/WorkKey$1;-><init>()V

    sput-object v0, Lcom/yifengcom/yfpos/service/WorkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 7

    const/4 v3, 0x4

    const/16 v2, 0x10

    const/4 v1, 0x0

    const/16 v0, 0x44

    new-array v4, v0, [B

    const/4 v0, 0x2

    iget-byte v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    aput-byte v5, v4, v0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    aput-byte v0, v4, v5

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    array-length v0, v0

    if-ge v0, v2, :cond_9

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    array-length v0, v0

    :goto_1
    invoke-static {v5, v1, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    const/16 v6, 0x14

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    array-length v0, v0

    if-ge v0, v3, :cond_a

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    array-length v0, v0

    :goto_2
    invoke-static {v5, v1, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/16 v0, 0x18

    iget-byte v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    aput-byte v5, v4, v0

    const/16 v5, 0x19

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    if-nez v0, :cond_b

    move v0, v1

    :goto_3
    aput-byte v0, v4, v5

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    const/16 v6, 0x1a

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    array-length v0, v0

    if-ge v0, v2, :cond_c

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    array-length v0, v0

    :goto_4
    invoke-static {v5, v1, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    const/16 v6, 0x2a

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    array-length v0, v0

    if-ge v0, v3, :cond_d

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    array-length v0, v0

    :goto_5
    invoke-static {v5, v1, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/16 v0, 0x2e

    iget-byte v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    aput-byte v5, v4, v0

    const/16 v5, 0x2f

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    if-nez v0, :cond_e

    move v0, v1

    :goto_6
    aput-byte v0, v4, v5

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    const/16 v5, 0x30

    iget-object v6, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    array-length v6, v6

    if-ge v6, v2, :cond_4

    iget-object v2, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    array-length v2, v2

    :cond_4
    invoke-static {v0, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    const/16 v2, 0x40

    iget-object v5, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    array-length v5, v5

    if-ge v5, v3, :cond_6

    iget-object v3, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    array-length v3, v3

    :cond_6
    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-object v4

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v3

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    move v0, v3

    goto :goto_5

    :cond_e
    move v0, v2

    goto :goto_6
.end method

.method public getMak()[B
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    return-object v0
.end method

.method public getMakCheckValue()[B
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    return-object v0
.end method

.method public getMakIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    return v0
.end method

.method public getPik()[B
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    return-object v0
.end method

.method public getPikCheckValue()[B
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    return-object v0
.end method

.method public getPikIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    return v0
.end method

.method public getTdk()[B
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    return-object v0
.end method

.method public getTdkCheckValue()[B
    .locals 1

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    return-object v0
.end method

.method public getTdkIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    return v0
.end method

.method public setMak([B)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    return-void
.end method

.method public setMakCheckValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    return-void
.end method

.method public setMakIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    return-void
.end method

.method public setPik([B)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    return-void
.end method

.method public setPikCheckValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    return-void
.end method

.method public setPikIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    return-void
.end method

.method public setTdk([B)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    return-void
.end method

.method public setTdkCheckValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    return-void
.end method

.method public setTdkIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkIndex:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->tdkCheckValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makIndex:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->mak:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->makCheckValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-byte v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikIndex:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pik:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/yifengcom/yfpos/service/WorkKey;->pikCheckValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
