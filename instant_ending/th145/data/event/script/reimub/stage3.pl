#========================================================================
#	�얲�^�X�g�[���[
#	�X�e�[�W3�@VS�ؐ�
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u�{�[���̐^���͌��̔ޕ��Ɂv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#�t�F�C�X�摜
,DefineObject,reimu,-360,0,false
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
,DefineObject,reimu_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#�����\��ݒ�
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



# 2P�L�����X�e�[�W������o��
,Function,GameStory_1P_In(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,ImageDef,kasen,�ؐ�_��1,0,0
,th145_Show,kasen,-1280,

,SetFocus,kasen		,
�́H\n\R[�얲|���Ȃ�]�����ł����ɁH\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�{2,0,0
��̓z�͂�������\n���z���ɖ߂�̂�\,a11x2,0,0
,ClearBalloon,kasen

#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,ImageDef,reimu,�얲_�f1,0,0
,th145_Show,reimu,-1280	,

,SetFocus,reimu		,
�I���ɑ҂��Ă����Ȃ�\n���Ԃ�����������\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
��������\n�����ɉ�킹��\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�ʖڂ�\n�M���͍��A�ꎞ�I�����ǐ�����\n�菇�𓥂�Ō��z���ɗ��Ă���\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�f1,0,0
���̏�ԂŐl�ԂƓ�������\n�O�̐��E�Ŗڗ����Ȃ��󂪖�����\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�������Ă��鎞�Ԃ������I\n�����������z���ɖ߂��Ă���\n�̂͊�Ȃ��񂾂���\,a15x3,0,0
,ClearBalloon,reimu




,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,reimu,-1280,&
,th145_Hide,kasen,-1280,

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,reimu,�얲_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�얲�t�F�C�X�\���J�n

,SetFocus,kasen
���܂���\n���M���Ȃ��Ă��܂���\,a11x2,0,0

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
,ImageDef,reimu,�얲_�f1,0,0
,ImageDef,kasen,�ؐ�_�f1,0,0

,th145_Show,reimu,-1280	,&,#�얲�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�얲�t�F�C�X�\���J�n


,SetFocus,kasen		,
�ǂ��������ƁH\n��������\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�I�J���g�{�[���ɂ�\n�C���M�����[���������Ă�\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
����͊O�̐��E��\n�p���[�X�g�[���ł���\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
�ł����̓s�̃{�[������\n�O�̐��E�̐΂���Ȃ���I\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�����������炻����\n���p����ċ����̂����m��Ȃ�\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
���炭�C���t���ċ��Ȃ�\n�Ǝv������\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
���̏�ԂŃ{�[���̐^�̗͂�\n�g����ƌ��z���ǂ��납\n�ʂ̏��Ƃ��q�����Ă��܂��I\,a15x3,0,0
,ClearBalloon,reimu


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
