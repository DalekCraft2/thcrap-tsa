#========================================================================
#	�������X�g�[���[
#	�X�e�[�W1�@VS�얲
#	�ꏊ�F�n��a
#	�X�e�[�W�^�C�g��
#	   �u�����[������Ēm���Ă�H�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,koishi,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,koishi_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,koishi,-1280,&
,th145_Show,reimu,-1280	,

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�������[��\n���A�M���̌��ɂ��܁[��\,a15x3,0,0
,ClearBalloon,koishi

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�G2,0,0
�n���ɂ��s�s�`����\n�L�܂��Ă���ĕ���������\,a15x3,0,0
,ClearBalloon,reimu

#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,koishi		,
,ImageDef,koishi,������_�f1,0,0
���ɂ��܁[��\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
����A���H\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
���ɂ�����Č����Ă邯��\n�ڂ̑O�ɋ��邵\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�|�������\n�����Ă�̂�[�I\,a11x2,0,0
,ClearBalloon,koishi




,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,koishi,-1280,&
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
,ImageDef,koishi,������_��1,0,0
,ImageDef,reimu,�얲_�]1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,reimu
���낵��\n�}�Ɍ��ɂ���Ȃ��\,a11x2,0,0

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
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,koishi		,
�m��Ȃ��́H\n�����[����\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,reimu		,
���[��\n������Ƃ悭����Ȃ�\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,koishi		,
,ImageDef,koishi,������_�f1,0,0
�M���̌��[�c�c\,c11x2,0,0
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
