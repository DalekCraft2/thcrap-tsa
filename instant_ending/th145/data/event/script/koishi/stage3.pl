#========================================================================
#	�������X�g�[���[
#	�X�e�[�W3�@VS�ؐ�
#	�ꏊ�F�_�Ёi��j
#	�X�e�[�W�^�C�g��
#	   �u���d�b����Ȃ��z�ł��肢�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#�t�F�C�X�摜
,DefineObject,koishi,-360,0,false
,DefineObject,kasen,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,koishi_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,koishi,-1280,

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�������d�b���悭����Ȃ��Ƃ�\n�ӓ_��������˂�\,a15x3,0,0
,ClearBalloon,koishi

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�����ʂ̓s�s�`���l���悤����\,a15x3,0,0
,ClearBalloon,koishi

,ImageDef,kasen,�ؐ�_�{2,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,
��H\n����������N�������Ă���H\,a15x3,0,0
,ClearBalloon,kasen

#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,koishi		,
,ImageDef,koishi,������_�]1,0,0
�́[��\n���Ă܁[��\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�C�̂�����\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�́[���C�̂����Ł[��\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
����Ȗ󖳂��ł���I\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
���ӎ��̗d������\n���낵���z��\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�f1,0,0
���̊Ԃɂ��߂���\n����񂾂���\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�{1,0,0
����؂ȂƂ��Ȃ񂾂���\n�ז����Ȃ��łˁI\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,������_�f1,0,0
�Ƃ���œd�b����\n�m���Ă܂��H\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�͂��H\n�܂��b�����Ȃ�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�ǂ������[\,a05x2,0,0
,ClearBalloon,koishi

,Function,"StopBGM(500);",# BGM��~

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
���Ⴀ�M���Ȃ�\n�|�����Ă������\,a11x2,0,0
,ClearBalloon,koishi
,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
���ꂩ��M���̌���\n�s����I\,b11x2,0,0
,ClearBalloon,koishi




#���҃t�F�C�X�P��
,th145_Hide,koishi,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,kasen,�ؐ�_�{1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,kasen
�ז�������������\n���Ė{�Ԗ{��\,a11x2,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,kasen		,
�M��\n�����Ă�̂ɖ��ʂɋ����c�c\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
����������\n�|�������ł��傤�H\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
�͂��͂�\n�|�������ł���\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�������\n�����[������̂Ă����񂶂�\n����������[�I\,a15x3,0,0
,ClearBalloon,koishi

# =======================================
# �����ŉ�ʃt���b�V���𐔉����ĉ�����
# �h���N�G�̃G���J�E���g�݂����Ȋ�����
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
,Function,GameStory_SparkFadeIn(),
,Function,GameStory_FieldVibration_Low(),
,Function,GameStory_FieldSpark(),
,Function,"function main(){ for (local i=0; i < 10; i++) suspend(); }"
,Function,GameStory_SparkFadeIn(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,kasen		,
���܂��������\n�^�C�~���O�ł��c�c�I\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
��H\n�����N���Ă�̂�����\,a11x2,0,0
,ClearBalloon,koishi


,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
