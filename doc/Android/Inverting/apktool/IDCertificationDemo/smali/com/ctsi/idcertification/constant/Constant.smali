.class public Lcom/ctsi/idcertification/constant/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static AUTH_SERVER:Ljava/lang/String; = null

.field public static DIALOG_ISSHOW:Z = false

.field public static final READER_STEP_1:I = 0x1

.field public static final READER_STEP_2:I = 0x2

.field public static final READER_STEP_3:I = 0x3

.field public static final READER_STEP_4:I = 0x4

.field public static final READER_TYPE_BT:I = 0x3

.field public static final READER_TYPE_NFC:I = 0x2

.field public static final READER_TYPE_OTG:I = 0x1

.field public static RELEASE:Z = false

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_MAP_KEY_CONTENT:Ljava/lang/String; = "resultContent"

.field public static final RESULT_MAP_KEY_ERRORMESSAGE:Ljava/lang/String; = "errorMsg"

.field public static final RESULT_MAP_KEY_FLAG:Ljava/lang/String; = "resultFlag"

.field public static final RESULT_MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final RESULT_OK:I = 0x0

.field public static SDKVersion:Ljava/lang/String; = null

.field public static final STEP_MAP_KEY_FLAG:Ljava/lang/String; = "stepFlag"

.field public static TIME_OUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/ctsi/idcertification/constant/Constant;->RELEASE:Z

    .line 7
    const-string v0, "smz.android.ctsi.2017519"

    sput-object v0, Lcom/ctsi/idcertification/constant/Constant;->SDKVersion:Ljava/lang/String;

    .line 33
    sput-boolean v1, Lcom/ctsi/idcertification/constant/Constant;->DIALOG_ISSHOW:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
