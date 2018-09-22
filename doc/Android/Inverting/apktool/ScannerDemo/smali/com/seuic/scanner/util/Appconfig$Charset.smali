.class public final enum Lcom/seuic/scanner/util/Appconfig$Charset;
.super Ljava/lang/Enum;
.source "Appconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/util/Appconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Charset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seuic/scanner/util/Appconfig$Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum AutoDetect:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum BIG5:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum EUC_JP:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum GB2312:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum GBK:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum ISO8859_1:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum Raw:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum SJIS:Lcom/seuic/scanner/util/Appconfig$Charset;

.field public static final enum UTF8:Lcom/seuic/scanner/util/Appconfig$Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "AutoDetect"

    invoke-direct {v0, v1, v3}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->AutoDetect:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 568
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "Raw"

    invoke-direct {v0, v1, v4}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->Raw:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 569
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "GBK"

    invoke-direct {v0, v1, v5}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->GBK:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 570
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "GB2312"

    invoke-direct {v0, v1, v6}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->GB2312:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 571
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "UTF8"

    invoke-direct {v0, v1, v7}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->UTF8:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 572
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "BIG5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->BIG5:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 573
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "SJIS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->SJIS:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 574
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "EUC_JP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->EUC_JP:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 575
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    const-string v1, "ISO8859_1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/seuic/scanner/util/Appconfig$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->ISO8859_1:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 566
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/seuic/scanner/util/Appconfig$Charset;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$Charset;->AutoDetect:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$Charset;->Raw:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$Charset;->GBK:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$Charset;->GB2312:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$Charset;->UTF8:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seuic/scanner/util/Appconfig$Charset;->BIG5:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seuic/scanner/util/Appconfig$Charset;->SJIS:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seuic/scanner/util/Appconfig$Charset;->EUC_JP:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/seuic/scanner/util/Appconfig$Charset;->ISO8859_1:Lcom/seuic/scanner/util/Appconfig$Charset;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->$VALUES:[Lcom/seuic/scanner/util/Appconfig$Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seuic/scanner/util/Appconfig$Charset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 566
    const-class v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seuic/scanner/util/Appconfig$Charset;

    return-object v0
.end method

.method public static values()[Lcom/seuic/scanner/util/Appconfig$Charset;
    .locals 1

    .prologue
    .line 566
    sget-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->$VALUES:[Lcom/seuic/scanner/util/Appconfig$Charset;

    invoke-virtual {v0}, [Lcom/seuic/scanner/util/Appconfig$Charset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seuic/scanner/util/Appconfig$Charset;

    return-object v0
.end method
