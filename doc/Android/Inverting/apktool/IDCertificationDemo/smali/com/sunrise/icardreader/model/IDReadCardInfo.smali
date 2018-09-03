.class public Lcom/sunrise/icardreader/model/IDReadCardInfo;
.super Ljava/lang/Object;


# static fields
.field public static RES_CARD_FAILED:Ljava/lang/String;

.field public static RES_CARD_NOT_NULL:Ljava/lang/String;

.field public static RES_CARD_NO_DERVICE:Ljava/lang/String;

.field public static RES_CARD_SUCCESS:Ljava/lang/String;


# instance fields
.field public CARDTYPE:Ljava/lang/String;

.field public ICCID:Ljava/lang/String;

.field public retCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-1"

    sput-object v0, Lcom/sunrise/icardreader/model/IDReadCardInfo;->RES_CARD_FAILED:Ljava/lang/String;

    const-string v0, "-2"

    sput-object v0, Lcom/sunrise/icardreader/model/IDReadCardInfo;->RES_CARD_NOT_NULL:Ljava/lang/String;

    const-string v0, "-3"

    sput-object v0, Lcom/sunrise/icardreader/model/IDReadCardInfo;->RES_CARD_NO_DERVICE:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/sunrise/icardreader/model/IDReadCardInfo;->RES_CARD_SUCCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
