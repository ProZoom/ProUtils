.class public Lcom/pax/api/PiccManager$PiccCardInfo;
.super Ljava/lang/Object;


# instance fields
.field public CID:B

.field public CardType:B

.field public Other:[B

.field public SerialInfo:[B

.field final synthetic this$0:Lcom/pax/api/PiccManager;


# direct methods
.method public constructor <init>(Lcom/pax/api/PiccManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->this$0:Lcom/pax/api/PiccManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->SerialInfo:[B

    iput-object v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->Other:[B

    return-void
.end method

.method public constructor <init>(Lcom/pax/api/PiccManager;[B[B[B[B)V
    .locals 2
    .param p2, "CardType"    # [B
    .param p3, "SerialNo"    # [B
    .param p4, "CID"    # [B
    .param p5, "Other"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->this$0:Lcom/pax/api/PiccManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->SerialInfo:[B

    iput-object v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->Other:[B

    aget-byte v0, p2, v1

    iput-byte v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->CardType:B

    iput-object p3, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->SerialInfo:[B

    aget-byte v0, p4, v1

    iput-byte v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->CID:B

    iput-object p5, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->Other:[B

    return-void
.end method


# virtual methods
.method public setOutput([B[B[B[B)V
    .locals 2
    .param p1, "CardType"    # [B
    .param p2, "SerialNo"    # [B
    .param p3, "CID"    # [B
    .param p4, "Other"    # [B

    .prologue
    const/4 v1, 0x0

    aget-byte v0, p1, v1

    iput-byte v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->CardType:B

    iput-object p2, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->SerialInfo:[B

    aget-byte v0, p3, v1

    iput-byte v0, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->CID:B

    iput-object p4, p0, Lcom/pax/api/PiccManager$PiccCardInfo;->Other:[B

    return-void
.end method
