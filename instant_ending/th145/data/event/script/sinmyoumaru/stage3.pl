#========================================================================
#	�j���ۃX�g�[���[
#	�X�e�[�W3�@VS������
#	�ꏊ�F�n��a
#	�X�e�[�W�^�C�g��
#	   �u�N���C�t���Ă����āv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/koishi.csv"

#�t�F�C�X�摜
,DefineObject,sinmyoumaru,-360,0,false
,DefineObject,koishi,-360,0,true

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
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,koishi_label,1120,360,false

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,koishi,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,sinmyoumaru,-1280	,,#�j���ۃt�F�C�X�\���J�n

,SetFocus,sinmyoumaru		,
�h�L�h�L\,a05x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�n�ꐢ�E�ɗ��鎖�Ȃ��\n��������ْ�����[\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_�f1,0,0
�n��ɂ͉��̂������{�[����\n�����Ă�z����������\n�Ȃ������Ȃ�\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,th145_Show,koishi,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�������[��\,a05x2,0,0
,ClearBalloon,koishi

#�Љ�J�b�g�\���@�������́u������_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,koishi
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_�{1,0,0
�N�������߂Ă�̂���\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�������[��\n���M���̌��ɋ����\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
��H\n������������H\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�������[��\n�M���̌��[\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_�{1,0,0
����͂�����I\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�I�J���g�{�[���̋��т�\n���̍��ɋ����n���Ă���I\,a11x2,0,0
,ClearBalloon,sinmyoumaru





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,koishi,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,koishi,������_�]1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,koishi,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,koishi
�q����₷���i���o�[������I\,a15x3,0,0

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
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,koishi,������_��1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,koishi,-1280	,#�j���ۃt�F�C�X�\���J�n


,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�r�b�N�������[\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�I�J���g�{�[����\n�P���������ė������Ǝv����\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,koishi		,
�I�J���g�{�[�����\n���ݔ����̂��Ȏ�\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�������[��\n�ڂɉf��Ȃ����Ă�����\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�ł�����Ŏ���������\n����Ƒ傫���Ȃ��[\,a11x2,0,0
,ClearBalloon,sinmyoumaru

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
