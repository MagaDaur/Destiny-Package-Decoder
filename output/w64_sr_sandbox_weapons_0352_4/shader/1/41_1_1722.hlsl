// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[120];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  uint v6 : SV_VERTEXID0,
  uint v7 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float2 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v6.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v6.x;
  r0.w = (int)r0.y * 6;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(3,1,4,5) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r0.w = (uint)r0.w;
  r0.w = t2.Load(r0.w).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r4.xyzw = t2.Load(r1.z).xyzw;
  r1.x = t2.Load(r1.w).x;
  r1.yzw = cb1[1].xyz * r3.yyy;
  r1.yzw = cb1[0].xyz * r3.xxx + r1.yzw;
  r1.yzw = cb1[2].xyz * r3.zzz + r1.yzw;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r5.x = cmp(1 < cb0[114].x);
  if (r5.x != 0) {
    r5.x = cmp((int)r0.y < 0);
    if (r5.x != 0) {
      r5.x = cb0[36].x + 1;
      r5.x = (uint)r5.x;
      r5.xyz = t2.Load(r5.x).xyz;
    } else {
      r5.w = cb0[114].x + -1;
      r0.x = -r5.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
        r5.xyz = r3.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r5.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].xyz * r5.yyy;
  r3.xyz = cb1[0].xyz * r5.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * r5.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r3.xyz = r3.xyz + -r1.yzw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(1,0,0);
  r0.xy = cos(r2.xy);
  r5.x = r0.x * r0.y;
  r0.x = sin(r2.x);
  r5.y = r0.x * r0.y;
  r5.z = sin(-r2.y);
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r0.y = frac(cb0[117].x);
  r0.y = r0.x ? cb0[116].x : r0.y;
  r0.y = 3.14100003 * r0.y;
  sincos(r0.y, r2.x, r6.x);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r3.xyz * r0.yyy;
  r3.xyz = r3.xyz * r2.xxx;
  r6.yzw = r5.zxy * -r3.yzx;
  r7.xyz = r5.yzx * -r3.zxy + -r6.yzw;
  r0.y = dot(r5.xyz, -r3.xyz);
  r7.w = -r0.y;
  r5.xyz = r6.xxx * r5.xyz;
  r5.w = 0;
  r5.xyzw = r7.xyzw + r5.xyzw;
  r6.yzw = r5.yzx * r3.zxy;
  r6.yzw = r3.yzx * r5.zxy + -r6.yzw;
  r5.xyz = r6.xxx * r5.xyz + r6.yzw;
  r3.xyz = r5.www * r3.xyz + r5.xyz;
  r5.xyz = r3.xyz * r4.zzz;
  r3.xyz = r3.xyz * r4.zzz + r1.yzw;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  o1.xyz = r5.xyz * r0.yyy;
  o0.y = r0.x ? cb0[116].x : cb0[117].x;
  r5.xyzw = cb12[1].xyzw * r3.yyyy;
  r5.xyzw = cb12[0].xyzw * r3.xxxx + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r3.zzzz + r5.xyzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  r0.xyz = cb12[7].xyz + -r1.yzw;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 0.280000001 * r2.z;
  r0.y = frac(r0.y);
  r0.z = cb0[98].x * r0.y;
  r0.z = -r0.z * cb0[108].x + cb0[108].y;
  r0.x = saturate(r0.x * cb0[108].x + r0.z);
  r0.y = cb0[104].x + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = saturate(3.33333302 * r0.y);
  r0.x = r0.x * r0.y;
  r0.x = cb0[12].z * r0.x;
  r0.x = cb0[119].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r3.xyz;
  o0.w = r5.w;
  o0.x = r0.w;
  o3.xy = float2(0,0);
  o3.z = r0.w;
  o3.w = r2.w;
  o4.x = 0;
  o4.yzw = r4.xyz;
  o6.xyzw = r5.xyzw;
  o5.x = r4.w;
  o5.y = r1.x;
  return;
}