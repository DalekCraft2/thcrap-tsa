#========================================================================
#	�ؐ�X�g�[���[
#	�X�e�[�W�P�@VS�얲
#	�ꏊ�F�_��
#	�X�e�[�W�^�C�g��
#	   �u���Ӗ��Ȓ����v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,kasen,-360,0,false
,DefineObject,reimu,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,kasen_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,reimu,-1280	,&
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�f1,0,0
�Ȃ��\n���̓��̂̒m��Ȃ��l����\n�C���t����������Ă�����\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_�G2,0,0
������������\n���������̂��Ȃ�\,a11x2,0,0
,ClearBalloon,reimu

#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�Ƃ����\n�I�J���g�{�[���́H\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_�]1,0,0
���񂽂Ɩ���������\n�D�����z�H\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_�f1,0,0
���������Ώ������̂�˂�\n�܊p���W�߂悤�Ǝv�����̂�\,a15x3,0,0
,ClearBalloon,reimu


,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_�{1,0,0
�W�߂�̂͂�߂�\n�c�c����͑�l�������ĂȂ���\n���͂܂��s������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_�f1,0,0
�H\,a05x2,0,0
,ClearBalloon,reimu


,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
�Ƃɂ����M���������Ă���\n�I�J���g�{�[����\n�����a�����\,a15x3,0,0
,ClearBalloon,kasen



# ********************************************
# ********************************************


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,kasen,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,reimu,�얲_�]1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,reimu
����ς莵�W�߂悤����\,a11x2,0,0

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
,ImageDef,kasen,�ؐ�_�@1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,reimu
�܂��ǂ����ǂ�\n����ȋC���̈����{�[�������Ă�\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,kasen
���������\n�����Ď��W�߂Ă͂����Ȃ���\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu
,ImageDef,reimu,�얲_��1,0,0
�ցH\n�Ȃ�ŁH\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,kasen
,ImageDef,kasen,�ؐ�_�]1,0,0
�M���̎d����\n�����邾��������\,a11x2,0,0
,ClearBalloon,kasen

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
